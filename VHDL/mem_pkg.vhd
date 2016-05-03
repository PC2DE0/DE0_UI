library ieee;
use ieee.std_logic_1164.all;

package mem_pkg is

	constant DATA_WIDTH 		: positive := 8;
	subtype DATA_RANGE is natural range DATA_WIDTH-1 downto 0;
	
	constant MAX_WIDTH			: positive := 32;
	constant SDR_COUNT			: positive := 3;
	

	--Register Address Locations
		--these values should not be changed when adding in new addresses
		--The UI adds registers in sequential order, so any new memory maped locations
		--that are added will need to be added in order.
	constant MMAP_ADDR			: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000000";
	constant ADDR_1				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000001";
	constant ADDR_2				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000002";
	constant ADDR_3				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000003";
		--The return address will always be the last memory location
	constant RETURN_REG			: std_logic_vector(MAX_WIDTH-1 downto 0) := X"FFFFFFFF";
	
end mem_pkg;

