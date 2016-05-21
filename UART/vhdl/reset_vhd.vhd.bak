-- Jayson Salkey
-- 19:03 May 20, 2016

entity reset_vhd is
  port(
    clk : in std_logic;
    reset : out std_logic
  );
end reset_vhd;


architecture BHVR of reset_vhd is

  signal reset_counter : std_logic_vector(3 downto 0) := "1111";

  begin

    -- reset is low until reset counter is 0
    reset <= '1' when reset_counter = "0000" else '0';

    process(clk)

      if (rising_edge(clk)) then
        if(unsigned(reset_counter) > 0) then
          reset_counter <= reset_counter - '1';
        end if;
      end if;

    end process;


end BHVR;
