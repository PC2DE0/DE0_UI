library ieee;
use ieee.std_logic_1164.all;

entity serial_to_serial_reg is
  generic(width: positive);
  port(
    clk : in std_logic;
    serial_in : in std_logic;
    serial_out : out std_logic
  );
end serial_to_serial_reg;

architecture bhvr of serial_to_serial_reg is
  signal tmp : std_logic_vector(width downto 0);
  begin
    process(clk)
      begin
        if(rising_edge(clk)) then
          -- unrolls
          for i in 0 to width-1 loop
            tmp(i+1) <= tmp(i);
          end loop;
          tmp(0) <= serial_in;
        end if;
    end process;
    serial_out <= tmp(width);
end bhvr;
