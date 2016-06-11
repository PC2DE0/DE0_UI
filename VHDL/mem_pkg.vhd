library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package mem_pkg is


	constant ADDR_WIDTH : positive := 16;
	constant DATA_WIDTH 		: positive := 15;
	constant RW_WIDTH : positive := 1;
	constant INSTR_WIDTH : positive := 32;
	subtype DATA_RANGE is natural range DATA_WIDTH-1 downto 0;

	constant MAX_WIDTH			: positive := 32;
	constant SDR_COUNT			: positive := 3;

	type registerArray is array (0 to 31) of std_logic_vector(DATA_WIDTH-1 downto 0);
	type selectArray is array (0 to 31) of std_logic;

	constant C_MMAP_ADDR_WIDTH : positive := 32;
  constant C_MMAP_DATA_WIDTH : positive := 32;
  constant C_MEM_IN_WIDTH : positive := 32;
  constant C_MEM_ADDR_WIDTH : positive := 32;
  constant C_MEM_OUT_WIDTH : positive := 32;
  constant C_MEM_START_ADDR : std_logic_vector(C_MMAP_ADDR_WIDTH-1 downto 0) := (others=>'0');
  constant C_MEM_END_ADDR : std_logic_vector(C_MMAP_ADDR_WIDTH-1 downto 0) := (others=>'1');

 	constant C_RESULT_ADDR : std_logic_vector(C_MMAP_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(C_MMAP_ADDR_WIDTH-4, C_MMAP_ADDR_WIDTH));
	constant C_GO_ADDR   : std_logic_vector(C_MMAP_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(C_MMAP_ADDR_WIDTH-3, C_MMAP_ADDR_WIDTH));
  constant C_N_ADDR : std_logic_vector(C_MMAP_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(C_MMAP_ADDR_WIDTH-2, C_MMAP_ADDR_WIDTH));
  constant C_DONE_ADDR : std_logic_vector(C_MMAP_ADDR_WIDTH-1 downto 0) := std_logic_vector(to_unsigned(C_MMAP_ADDR_WIDTH-1, C_MMAP_ADDR_WIDTH));

end mem_pkg;
