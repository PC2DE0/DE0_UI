library ieee;
use ieee.std_logic_1164.all;

package mem_pkg is



	constant DATA_WIDTH 		: positive := 8;
	subtype DATA_RANGE is natural range DATA_WIDTH-1 downto 0;

	constant MAX_WIDTH			: positive := 32;
	constant SDR_COUNT			: positive := 3;

	type registerArray is array (0 to 31) of std_logic_vector(DATA_WIDTH-1 downto 0);
	type selectArray is array (0 to 31) of std_logic;

	--Register Address Locations
		--these values should not be changed when adding in new addresses
		--The UI adds registers in sequential order, so any new memory maped locations
		--that are added will need to be added in order.
	constant MMAP_ADDR			: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000000";
	constant ADDR_1					: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000001";
	constant ADDR_2					: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000002";
	constant ADDR_3					: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000003";
	constant ADDR_4					: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000004";
	constant ADDR_5					: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000005";
	constant ADDR_6					: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000006";
	constant ADDR_7					: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000007";
	constant ADDR_8					: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000008";
	constant ADDR_9					: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000009";
	constant ADDR_10				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"0000000A";
	constant ADDR_11				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"0000000B";
	constant ADDR_12				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"0000000C";
	constant ADDR_13				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"0000000D";
	constant ADDR_14				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"0000000E";
	constant ADDR_15				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"0000000F";
	constant ADDR_16				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000010";
	constant ADDR_17				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000011";
	constant ADDR_18				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000012";
	constant ADDR_19				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000013";
	constant ADDR_20				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000014";
	constant ADDR_21				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000015";
	constant ADDR_22				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000016";
	constant ADDR_23				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000017";
	constant ADDR_24				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000018";
	constant ADDR_25				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000019";
	constant ADDR_26				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"0000001A";
	constant ADDR_27				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"0000001B";
	constant ADDR_28				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"0000001C";
	constant ADDR_29				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"0000001D";
	constant ADDR_30				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"0000001E";
	constant ADDR_31				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"0000001F";
	constant ADDR_32				: std_logic_vector(MAX_WIDTH-1 downto 0) := X"00000020";

		--The return address will always be the last memory location
	constant RETURN_REG			: std_logic_vector(MAX_WIDTH-1 downto 0) := X"FFFFFFFF";

end mem_pkg;
