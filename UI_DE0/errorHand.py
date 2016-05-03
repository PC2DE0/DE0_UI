from sys import platform as _platform
if _platform == "linux":
    from Tkinter import *
else:
    from tkinter import *


#The following will not allow the user to enter in any characters that will cause data transmission issues
def keyPress(event):
    if event.char.upper() in ('1', '2', '3', '4', '5', '6', '7', '8', '9', '0'):
        pass
    elif event.keysym not in ('Alt_r', 'Alt_L', 'F4', 'BackSpace', 'Left', 'Right'):
        return 'break'


def keyPressHex(event):
    if event.char.upper() in ('1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'A', 'B', 'C', 'D', 'E', 'F', 'X'):
        pass
    elif event.keysym not in ('Alt_r', 'Alt_L', 'F4', 'BackSpace', 'Left', 'Right'):
        return 'break'

# The following error handlers will check values that are going to be input
# All of the following error checks will return 1 or 0
# 1 = error
# 0 = pass / correct

#Check to see if the value in is valid. It will take in the string that is placed in the entry widget
def checkVal(str):
    #check if blank
    if (str == ''):
        errorPopUp('[No Value]')
        return 1
    #Make sure that the value entered is not bigger than what can be placed into 32bits
    elif (int(str) > 2**32):
        errorPopUp('[%s]' % str)
        return 1
    else:
        return 0


#Check to see if the value in is valid bit range. It will take in the string that is placed in the entry widget
def checkBitVal(str):
    #check if blank, if so error
    if (str == ''):
        errorPopUp('[No Value]')
        return 1
    #Value can not be greater than 32 bits
    elif (int(str) > 32):
        errorPopUp('[%s]' % str)
        return 1
    else:
        return 0


#Need to check if out of reg range
def checkRegRange(str):
    #check if blank, if so error
    if (str == ''):
        errorPopUp('[No Value]')
        return 1
    #Value can not be greater than 32 bits
    elif (int(str) > 2**32):
        errorPopUp('[%s]' % str)
        return 1
    else:
        return 0


#Check hex value if valid
def checkHex(str):
    #check if 0x in front if not error
    if (str == ''):
        errorPopUp('[No Value]')
        return 1
    elif (str[0:2] != '0x'):
        errorPopUp('[%s]' % str)
        return 1
    elif (int(str) > 2**32):
        errorPopUp('[%s]' % str)
        return 1
    else:
        return 0


def errorPopUp(str):
    errorBadVal = Toplevel()
    errorBadVal.title("Error")
    msg = Label(errorBadVal, text='%s is not an acceptable value' % str)
    msg.pack()
    button = Button(errorBadVal, text='close', command=errorBadVal.destroy)
    button.pack()
