--This counter will count to 2 and reset and send an enable signal 
--on the 0. This is made so that when sending instructions it will only 
--take every second instruction and send.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mem_pkg.all;

entity sdr_count is
	generic (
		SDR_count		: positive
	);
	port (
		sdr    			: in  std_logic;								--from the vJTAG
		rst				: in std_logic;
		output 			: out std_logic;
		counter 		: out std_logic_vector(SDR_COUNT-1 downto 0)
	);
end sdr_count;


architecture count of sdr_count is
	
	signal count : std_logic_vector(SDR_COUNT-1 downto 0);
	
begin
	process (sdr, rst)
	begin	
		if (rst ='1') then
			output <= '0';
			count <= (others <= '0');
		elsif (sdr'event and sdr = '1') then
			if(unsigned(count) = 3) then
				output <= '0';
				count <= (others => '0');
			elsif(unsigned(count) = 0) then
				output <= '1';
				count <= std_logic_vector(unsigned(count) + 1);
			else
				output <= '0';
				count <= std_logic_vector(unsigned(count) + 1);
			end if;
		end if;
	end process;
	
	counter <= count;

end count;	
	