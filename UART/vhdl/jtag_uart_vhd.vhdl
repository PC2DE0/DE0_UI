-- Jayson Salkey
-- 19:03 May 20, 2016

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity jtag_uart_vhd is
  port(
    clk : in std_logic;
    reset : in std_logic;
    wr : in std_logic;
    data_in : in std_logic_vector(7 downto 0);
    rd : in std_logic;
    data_out : out std_logic_vector(7 downto 0);
    txmt : out std_logic;
    txfl : out std_logic;
    rxmt : out std_logic;
    rxfl : out std_logic
  );
end jtag_uart_vhd;

-- TX 00
-- RX 01
-- STATUS 10
-- BYPASS 11


architecture STR of jtag_uart_vhd is

  signal ir_in : std_logic_vector(1 downto 0);
  signal ir_out : std_logic_vector(1 downto 0);
  signal tdo : std_logic;
  signal tck : std_logic;
  signal tdi : std_logic;
  signal virtual_state_cdr : std_logic;
  signal virtual_state_sdr : std_logic;
  signal virtual_state_udr : std_logic;
  signal virtual_state_uir : std_logic;

  signal out_data : std_logic_vector(7 downto 0);
  signal shift_buffer : std_logic_vector(7 downto 0) := (others => '0');
  signal cdr_delayed : std_logic;
  signal sdr_delayed : std_logic;
  signal bypass_v : std_logic_vector(1 downto 0);
  signal txmtt : std_logic;
  signal txfll : std_logic;
  signal rxmtt : std_logic;
  signal rxfll : std_logic;

  signal ir : std_logic_vector(1 downto 0) := "11";

  signal out_full : std_logic;
  signal out_empty : std_logic;
  signal in_full : std_logic;
  signal in_empty : std_logic;


  signal t : std_logic;
  signal q : std_logic;

  begin

    ir_out <= ir_in;
    tdo <= bypass_v(0) when (ir = "11") else shift_buffer(0);
    txmt <= txmtt;
    txfl <= txfll;
    rxmt <= rxmtt;
    rxfl <= rxfll;

    U_VJTAG: entity work.vhdl_virtual_jtag
      port map(
        ir_out => ir_out,
        tdo => tdo,
        ir_in => ir_in,
        tck => tck,
        tdi => tdi,
        virtual_state_cdr => virtual_state_cdr,
        virtual_state_cir => open,
        virtual_state_e1dr => open,
        virtual_state_e2dr => open,
        virtual_state_pdr => open,
        virtual_state_sdr => virtual_state_sdr,
        virtual_state_udr => virtual_state_udr,
        virtual_state_uir => virtual_state_uir
      );


    t <= '1' when (ir = "01") else '0';
    q <= '1' when (ir = "00") else '0';

    U_BUFFER_OUT: entity work.buf
      port map(
        aclr => not reset,
        data => data_in,
        wrclk => clk,
        wrreq => not wr,
        wrfull => out_full,
        rdclk => not tck,
        rdreq => (virtual_state_cdr and (q)),
        q => out_data,
        rdempty => out_empty
      );

    U_BUFFER_IN: entity work.buf
      port map(
        aclr => not reset,
        data => shift_buffer,
        wrclk => not tck,
        wrreq => virtual_state_udr and t,
        wrfull => in_full,
        rdclk => not clk,
        rdreq => rd,
        q => data_out,
        rdempty => in_empty
      );

      process(tck)
        begin
          if(rising_edge(tck)) then
              txmtt <= out_empty;
              rxfll <= in_full;
          end if;
      end process;

      process(clk)
        begin
          if(rising_edge(clk)) then
              txfll <= out_full;
              rxmtt <= in_empty;
          end if;
      end process;

      process(tck)
        begin
          if(falling_edge(tck)) then
              cdr_delayed <= virtual_state_cdr;
              sdr_delayed <= virtual_state_sdr;
          end if;
      end process;

      process(tck)
        begin
          if(falling_edge(tck)) then
              if(virtual_state_uir = '1') then
                ir <= ir_in;
              end if;
          end if;
      end process;


      process(tck)
        begin
          if(rising_edge(tck)) then
              case ir is
                when "00" =>
                  if(cdr_delayed = '1') then
                    shift_buffer <= out_data;
                  else
                    if(sdr_delayed = '1') then
                      shift_buffer <= tdi&shift_buffer(7 downto 1);
                    end if;
                  end if;

                when "01" =>
                  if(sdr_delayed = '1') then
                    shift_buffer <= tdi&shift_buffer(7 downto 1);
                  end if;

                when "10" =>
                  if(cdr_delayed = '1') then
                    shift_buffer <= "0000"&rxfll&rxmtt&txfll&txmtt;
                  elsif (sdr_delayed = '1') then
                    shift_buffer <= tdi&shift_buffer(7 downto 1);
                  end if;

                when "11" =>
                  if(sdr_delayed = '1') then
                    bypass_v <= tdi & bypass_v(1 downto 1);
                  end if;
                end case;
          end if;
      end process;

end STR;
