entity jtag_wrapper is
  generic(width : positive);
  port(
    clk : in std_logic;
    rst : in std_logic;
    ready : out std_logic;
    input : in std_logic_vector(width-1 downto 0); -- Data from FPGA to Computer
    input_valid : in std_logic;
    output : out std_logic_vector(width-1 downto 0); -- Data from Computer to FPGA
    output_valid : out std_logic --asserted for one cycle for every output, asserted once every width cycles?
  );
end jtag_wrapper;


architecture bhvr of jtag_wrapper is

end bhvr;
