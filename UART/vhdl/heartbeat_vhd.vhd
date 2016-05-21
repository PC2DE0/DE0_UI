-- Jayson Salkey
-- 19:03 May 20, 2016



entity heartbeat_vhd is
  port(
    clk : in std_logic;
    rst : in std_logic;
    heartbeat : out std_logic
  );
end heartbeat_vhd;



architecture BHVR of heartbeat_vhd is

  counter : std_logic_vector(26 downto 0);
  heartbeat_arch : std_logic;
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
          counter <= counter + '1';
          if(counter = ) then
            counter <= (others => '0');
            heartbeat_arch <= not heartbeat_arch;
          end if;
        end if;
      end if;
    end process;

end BHVR;
