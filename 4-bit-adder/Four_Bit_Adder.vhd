library ieee;
use ieee.std_logic_1164.all;

entity fourBitAdder is

	port(A, B : in std_logic_vector(3 downto 0);
		  S : out std_logic_vector(4 downto 0));
		  
end entity fourBitAdder;

architecture struct of fourBitAdder is

	component Full_Adder
		port(A,B,Cin : in std_logic; Cout,S : out std_logic);
	end component;
	
	signal mid: std_logic_vector(2 downto 0);
	
begin

	f0 : Full_Adder port map(A => A(0), B => B(0), Cin => '0', S => S(0), Cout => mid(0));
	f1 : Full_Adder port map(A => A(1), B => B(1), Cin => mid(0), S => S(1), Cout => mid(1));
	f2 : Full_Adder port map(A => A(2), B => B(2), Cin => mid(1), S => S(2), Cout => mid(2));
	f3 : Full_Adder port map(A => A(3), B => B(3), Cin => mid(2), S => S(3), Cout => S(4));
	
end struct;