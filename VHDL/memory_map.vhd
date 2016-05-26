-- Greg Stitt
-- University of Florida

-- Entity: memory_map
-- This entity establishes connections with user-defined addresses and
-- internal FPGA components (e.g. registers and blockRAMs).
--
-- Note: Make sure to add any new addresses to user_pkg. Also, in your C code,
-- make sure to use the same constants.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.mem_pkg.all;
--use work.config_pkg.all;
--use work.user_pkg.all;

entity memory_map is
    port (
        clk     : in  std_logic;
        rst     : in  std_logic;
        wr_en   : in  std_logic;
        --wr_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        --wr_data : in  std_logic_vector(MMAP_DATA_RANGE);
        wr_addr : in std_logic_vector(DATA_WIDTH-1 downto 0);
        wr_data : in std_logic_vector(DATA_WIDTH-1 downto 0);
        rd_en   : in  std_logic;
        rd_addr : in std_logic_vector(DATA_WIDTH-1 downto 0);
        rd_data : out std_logic_vector(DATA_WIDTH-1 downto 0);
        --rd_addr : in  std_logic_vector(MMAP_ADDR_RANGE);
        --rd_data : out std_logic_vector(MMAP_DATA_RANGE);

        -- application-specific I/O
        go     : out std_logic;
        n      : out std_logic_vector(31 downto 0);
        result : in  std_logic_vector(31 downto 0);
        done   : in  std_logic
        );
end memory_map;

architecture BHV of memory_map is

    signal reg_go : std_logic;
    signal reg_n  : std_logic_vector(31 downto 0);

begin
    -- memory map writes (i.e. SW->FPGA)
    process (clk, rst)
    begin
        if (rst = '1') then

            reg_go  <= '0';
            reg_n   <= (others => '0');
            rd_data <= (others => '0');

        elsif (rising_edge(clk)) then

            -- always clear go except when specifically written to. This
            -- ensures that go is never asserted for more than a cycle.
            reg_go <= '0';

            -- writes
            if (wr_en = '1') then
                case to_integer(unsigned(wr_addr)) is
                    -- when C_GO_ADDR =>
                    --     reg_go <= wr_data(0);
                    --
                    -- when C_N_ADDR =>
                    --     reg_n <= wr_data(n'length-1 downto 0);

                    when others =>
                        null;
                end case;
            end if;

            -- reads
            if (rd_en = '1')then
                case to_integer(unsigned(rd_addr)) is
                    -- when C_GO_ADDR =>
                    --     rd_data    <= (others => '0');
                    --     rd_data(0) <= reg_go;
                    --
                    -- when C_N_ADDR =>
                    --     rd_data <= reg_n;
                    --
                    -- when C_RESULT_ADDR =>
                    --     rd_data <= result;
                    --
                    -- when C_DONE_ADDR =>
                    --     rd_data    <= (others => '0');
                    --     rd_data(0) <= done;

                    when others =>
                        null;
                end case;
            end if;

        end if;
    end process;

    go <= reg_go;
    n  <= reg_n;

end BHV;