-- Jayson Salkey
-- 19:03 May 20, 2016

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity heartbeat_vhd is
  port(
    clk : in std_logic;
    rst : in std_logic;
    heartbeat : out std_logic
  );
end heartbeat_vhd;



architecture BHVR of heartbeat_vhd is

  signal counter : std_logic_vector(26 downto 0);
  signal heartbeat_arch : std_logic;
  begin

    heartbeat <= heartbeat_arch;

    process(clk,rst)
    begin
      -- low true?
      if (rising_edge(clk)) then
        if(rst = '0') then
          counter <= (others => '0');
          heartbeat_arch <= '0';
        else
          counter <= std_logic_vector(unsigned(counter) + 1);
          if(unsigned(counter) = 100000000) then
            counter <= (others => '0');
            heartbeat_arch <= not heartbeat_arch;
          end if;
        end if;
      end if;
    end process;

end BHVR;
