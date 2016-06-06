from sys import platform as _platform
if _platform == "linux":
    from Tkinter import *
    import ttk
    import SocketServer
else:
    from tkinter import *
    from tkinter.ttk import *
    import socketserver
    import os

import datetime
import logging
from threading import Thread
from errorHand import *
import socket, subprocess, time, errno, sys, os

host = 'localhost'
port = 2540
size = 1024


class App(Frame):
    def __init__(self, master):
        self.master = master
        Frame.__init__(self, master, relief=SUNKEN, bd=0)
        self.start()

    def start(self):
        self.master.title("DEO Controller")
        self.master.resizable(0, 0)

        ##Menu Bar##
        self.menu = Menu(self.master)
        self.master.config(menu=self.menu)
        self.fileMenu = Menu(self.menu, tearoff=0)
        self.helpMenu = Menu(self.menu, tearoff=0)
        self.guideMenu = Menu(self.menu, tearoff=0)

        ##File##
        self.menu.add_cascade(label="File", menu=self.fileMenu)
        self.fileMenu.add_command(label="Reset", command=lambda: (self.clearFrame()))
        self.fileMenu.add_command(label="Save Log")
        self.fileMenu.add_command(label="Preferences", command=self.clickPref)
        self.fileMenu.add_separator()
        self.fileMenu.add_command(label="Exit", command=self.master.quit)

        ##Help##
        self.menu.add_cascade(label="Help", menu=self.helpMenu)
        self.helpMenu.add_cascade(label="Guides", menu=self.guideMenu)
        self.guideMenu.add_command(label="Getting Started", command=self.userGuide_Start)
        self.guideMenu.add_command(label="Troubleshooting", command=self.userGuide_Trouble)
        self.guideMenu.add_command(label="Glue Logic", command=self.userGuide_Logic)
        self.helpMenu.add_command(label="Resources")
        ##End Menu##

        ###Left Frame###
        self.leftFrame = Frame(self.master)
        self.leftFrame.pack(side=LEFT, fill=Y)

        self.topleftFrame = LabelFrame(self.leftFrame, text="Setup", pady=10)
        self.topleftFrame.pack(fill=BOTH)
        self.setupFrame(self.topleftFrame)

        self.middleleftFrame = LabelFrame(self.leftFrame, text="Input", pady=10)
        self.middleleftFrame.pack(fill=BOTH)
        #########################################

        ###Right Frame###
        self.tree = ttk.Treeview()
        self.tree["columns"] = ("Address","Data")
        self.tree["show"] = "headings"
        self.tree.column("Address", width = 200)
        self.tree.column("Data", width = 200)
        self.tree.heading("Address", text = "Address")
        self.tree.heading("Data", text = "Data")
        for x in range(511,-1,-1):
            self.tree.insert("", 0, text="", values=(x,""))
        self.tree.pack()

        self.textscroll = Scrollbar(self.tree)
        self.inputFrame(self.middleleftFrame)

#####Start Textbox write#############
    def writeToText(self, msg):
        self.text_console['state'] = 'normal'
        if self.text_console.index('end-1c') != '1.0':
            self.text_console.insert('end', '\n')
        self.text_console.insert('end', msg)
        self.text_console['state'] = 'disabled'
#####End Textbox write#############

##This def will be used to take in the setup specifications for the glue logic
##it will have two entry fields
##Number of registers
##Number of bits per register
    def setupFrame(self, master):
        master.grid_columnconfigure(0, weight=1)
        master.columnconfigure(1, weight=2)
        master.columnconfigure(2, weight=6)
        master.columnconfigure(3, weight=1)
        ##Connect and Disconncet Buttons##
        self.start_count = 0
        self.connect_button = Button(master, text="Connect", command=lambda: self.start_server())
        self.disconnect_button = Button(master, text="Disconnect", command=lambda: self.close_server())

        self.connect_button.pack(side=LEFT, padx=10, pady=5)
        self.disconnect_button.pack(side=LEFT, padx=10, pady=5)
        #################################


    def clearFrame(self):
        self.middleleftFrame.pack_forget()
        self.middleleftFrame = LabelFrame(self.leftFrame, text="Input", pady=10)
        self.middleleftFrame.pack(fill=BOTH)

    def configWin(self, master):
        self.setup_button = Button(self.setupWindow, text="Setup", command=lambda: (self.inputFrame(self.middleleftFrame), self.setupWindow.destroy()))

## This class will be used to take in the input specifications for the glue logic
## based on address decoding. It will only appear after the setup button is hit,
## where it takes in the number of registers defined by the user.
    def inputFrame(self, master):
        self.regLabel = Label(master, text="Address (Decimal)", compound=CENTER)
        self.regLabel.grid(row=0, column=1)

        self.valueLabel = Label(master, text="Value (Decimal)", compound=CENTER)
        self.valueLabel.grid(row=0, column=2)

        self.regNames = []
        self.regValues = []
        self.sendButtons = []
        self.reciveButtons = []
        self.var = []
        self.checkVar = IntVar()
        self.checkReturns = []
        self.array = []
        for i in range(0, 1):
            j = i+1
            self.array.append(i)
            #Register Labels - these will be able to be changed by user and then later saved and reloaded.
            regName = Entry(master, width=10)
            regName.bind('<Key>', keyPress)
            regName.grid(row=j, column=1, padx=5, pady=5)
            self.regNames.append(regName)
            #Values to be sent to the register
            regValue = Entry(master, width=10)
            regValue.bind('<Key>', keyPress)    # don't allow any key presses for non-int chars
            regValue.grid(row=j, column=2, padx=5, pady=5)
            self.regValues.append(regValue)
            #Send button that will only work for reg in the same row
            self.sendButton = Button(master, text="Write")
            self.sendButton.bind("<Button-1>", lambda event, x=i: self.sendData(event, x))
            self.sendButton.grid(row=j, column=3, padx=3)
            self.sendButtons.append(self.sendButton)

            self.reciveButton = Button(master, text="Read")
            self.reciveButton.bind("<Button-1>", lambda event, x=i: self.reciveData(event, x))
            self.reciveButton.grid(row=j, column=4, padx=3)
            self.reciveButtons.append(self.reciveButton)


#####Start Menu Bar Commands##############
    #Pref Window
    def clickPref(self):
        top = Toplevel(self)
        top.title("Preferences")
        top.focus_set()
        ## todo add input mode , hex, binary,

    def userGuide_Start(self):
        os.startfile('Documents\Getting_Started.docx')

    def userGuide_Trouble(self):
        os.startfile('Documents\Troubleshooting_Guide.docx')

    def userGuide_Logic(self):
        os.startfile('Documents\Glue_Logic_Guide_v2.pdf')
#####End Menu Bar Commands##############

#####Start Server Commands##############
    def start_server(self):
        #from the button call
        if (self.start_count == 0):
            self.conn = socket.socket(socket.AF_INET, socket.SOCK_STREAM)        # AF_INET creates an IPV4 address family # SOCK_STREAM connections is TCP protocol
            self.conn.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
            self.conn.bind((host, port))
            self.tcl = subprocess.Popen('start /B Start_Server.LNK', shell=True) #opens the TCL Server and the Quartus TCL
            time.sleep(1) #delays for 5 seconds
            self.conn = self.Probe_Port(host, port)
            time.sleep(1) #delays for 2 seconds

            self.start_count = 1                                                #This is a flag that when set lets other functions know that there is a connection to the board

    def close_server(self):
        if (self.start_count == 0):
            pass
        elif (self.start_count == 1):
            self.start_count = 0
            self.tcl.kill()
            self.conn.close()

    def Probe_Port(self, host, port):
        # AF_INET creates an IPV4 address family
        # SOCK_STREAM connections is TCP protocol
        try:
            self.s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        except socket.error as msg:
            sys.exit();
        while True:
            try:
                self.s.connect((host, port))
                break
            except OSError as e:
                print("Problem with connecting to device, retrying\n")
        return self.s


    def toBin(self, x, size):
        return bin(x).lstrip('0b').zfill(size)

    def sendData(self, event, array_location):
        if (self.start_count == 0):
            noConn = Toplevel()
            noConn.title("No Connection")
            msg = Label(noConn, text='There is no connection established to the DE0 board')
            msg.pack()
            button = Button(noConn, text='close', command=noConn.destroy)
            button.pack()
        else:
            if(checkVal(self.regValues[array_location].get()) == 1):
                pass
            else:
                wr = self.toBin(int(1), 1)
                addr = self.toBin(int(self.regNames[array_location].get()), 9)
                data = self.toBin(int(self.regValues[array_location].get()), 22)
                self.writeOut(data+addr+wr)
                self.edit(int(self.regNames[array_location].get()),int(self.regValues[array_location].get()),mode="write")

    def reciveData(self, event, array_location):
        if(self.start_count == 0):
            noConn = Toplevel()
            noConn.title("No Connection")
            msg = Label(noConn, text="There is no connection established to the DE0 board")
            msg.pack()
            button = Button(noConn, text="close", command=noConn.destroy)
            button.pack()
        else:
            zero = self.toBin(int(0), 1)
            zero_tt = self.toBin(int(0), 22)
            addr = self.toBin(int(self.regNames[array_location].get()), 9)
            self.writeOut(zero_tt+addr+zero)
            self.edit(int(self.regNames[array_location].get()), 0, mode="read")

    def edit(self, address, data, mode="read"):
        self.x = self.tree.get_children()
        for i in self.x:
            if(self.tree.item(i)["values"][0] == address):
                if(mode == "read"):
                    self.tree.item(i, text="", values=(address,int(self.data.decode('utf-8'),2)))
                if(mode == "write"):
                    self.tree.item(i, text="", values=(address,data))
                return


    def writeOut(self, val):
        if (self.start_count == 1):
            # This will take an integer input and convert it to a binary string.
            # It will also cut off the 0b at the beginning of the string.
            self.conn.send(val.encode('utf-8') + b'\n')                         # Newline is required to flush the buffer on the Tcl server
            self.data = self.conn.recv(32+2)	                                # This will always need to have two additional bits added to the size of the string, this is for a start and stop bit.
        else:
            pass
###############################################################################


def main():
    #logging.basicConfi(level=logging.INFO)  #enable logging
    root = Tk()
    app = App(root)
    root.mainloop()


if __name__ =='__main__':
    main()
