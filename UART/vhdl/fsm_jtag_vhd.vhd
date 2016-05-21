-- Jayson Salkey
-- 19:03 May 20, 2016

entity fsm_jtag_vhd is
  port(
    clk : in std_logic;
    reset : in std_logic
  );

-- CHECK IF THE VERILOG HAS THE REGISTER ON TAIL, QUARTUS NETLIST VIEWER
