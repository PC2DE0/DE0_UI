-- Rey Orozco
-- University of Florida
-- Honors Project - Spring 2011

-- Greg Stitt
-- University of Florida

-- RS232_TX - Version 2

-- NOTE: should store data instead of requiring it to be stable

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rs232_tx is
  generic (
    clk_freq : positive);
  port (
    clk   : in  std_logic;
    rst   : in  std_logic;
    data  : in  std_logic_vector(7 downto 0);
    start : in  std_logic;
    tx    : out std_logic;
    busy  : out std_logic
    );
end rs232_tx;

architecture BHV of rs232_tx is

  signal tick   : std_logic;
  signal state  : std_logic_vector(3 downto 0);
  signal muxbit : std_logic;
  signal data_s : std_logic_vector(7 downto 0);
  
  constant CLK_DIVIDE_COUNT : integer := (clk_freq/115200)-1;
  signal   clk_count        : natural range 0 to CLK_DIVIDE_COUNT;
  
begin

  -- clock divider that generates a single 1 cycle pulse (i.e. a tick)
  process(clk, rst)
  begin
    if (rst = '1') then
      clk_count <= 0;
      tick      <= '0';
    elsif(rising_edge(clk)) then

      tick      <= '0';

      if (clk_count = CLK_DIVIDE_COUNT) then
        tick      <= '1';
        clk_count <= 0;
      else
        clk_count <= clk_count + 1;        
      end if;
    end if;
  end process;

  process (clk, rst)
  begin
    
    if (rst = '1') then
      state <= "0000";
      data_s <= (others => '0');
    elsif (clk'event and clk = '1') then

      if (start = '1') then
        data_s <= data;
      end if;
      
      -- state(3) = '1' signifies that a data bit should be transmitted
      -- otherwise, if state is less than 4, (not start or data) send stop      
      case state is
        when "0000" => if (start = '1') then state <= "0011"; end if;
        when "0011" => if (tick = '1') then state  <= "0100"; end if;  -- wait for tick, then start
        when "0100" => if (tick = '1') then state  <= "1000"; end if;  -- start
        when "1000" => if (tick = '1') then state  <= "1001"; end if;  -- bit 0
        when "1001" => if (tick = '1') then state  <= "1010"; end if;  -- bit 1
        when "1010" => if (tick = '1') then state  <= "1011"; end if;  -- bit 2
        when "1011" => if (tick = '1') then state  <= "1100"; end if;  -- bit 3
        when "1100" => if (tick = '1') then state  <= "1101"; end if;  -- bit 4
        when "1101" => if (tick = '1') then state  <= "1110"; end if;  -- bit 5
        when "1110" => if (tick = '1') then state  <= "1111"; end if;  -- bit 6
        when "1111" => if (tick = '1') then state  <= "0001"; end if;  -- bit 7
        when "0001" => if (tick = '1') then state  <= "0010"; end if;  -- stop 1                      
        when "0010" => if (tick = '1') then state  <= "0000"; end if;  -- stop 2
        when others => state                       <= "0000";  -- others
      end case;
    end if;
  end process;

  process (state, data_s)
  begin

    case state(2 downto 0) is
      when "000"  => muxbit <= data_s(0);
      when "001"  => muxbit <= data_s(1);
      when "010"  => muxbit <= data_s(2);
      when "011"  => muxbit <= data_s(3);
      when "100"  => muxbit <= data_s(4);
      when "101"  => muxbit <= data_s(5);
      when "110"  => muxbit <= data_s(6);
      when "111"  => muxbit <= data_s(7);
      when others => null;
    end case;
    
  end process;

  busy <= (state(3) or state(2) or state(1) or state(0)) and not rst;
  tx   <= ((not state(3) and not state(2)) or (state(3) and muxbit)) or rst;
  
end BHV;
