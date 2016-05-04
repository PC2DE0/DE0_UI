library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity application_test is
	port(
		input0 : in std_logic_vector(7 downto 0);
		input1 : in std_logic_vector(7 downto 0);
		output : out std_logic_vector(7 downto 0)
	);
end application_test;


architecture bhvr of application_test is
begin
	output <= std_logic_vector(unsigned(input0) + unsigned(input1));
end bhvr;




