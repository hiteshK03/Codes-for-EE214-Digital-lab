library ieee;
use ieee.std_logic_1164.all;

entity EightBitAdder is

	port(A, B : in std_logic_vector(7 downto 0);
		  S : out std_logic_vector(7 downto 0));
		  
end entity EightBitAdder;

architecture struct of EightBitAdder is

	component Full_Adder
		port(A,B,Cin : in std_logic; Cout,S : out std_logic);
	end component;
	
	signal mid: std_logic_vector(6 downto 0);
	
begin

	f0 : Full_Adder port map(A => A(0), B => B(0), Cin => '0', S => S(0), Cout => mid(0));
	f1 : Full_Adder port map(A => A(1), B => B(1), Cin => mid(0), S => S(1), Cout => mid(1));
	f2 : Full_Adder port map(A => A(2), B => B(2), Cin => mid(1), S => S(2), Cout => mid(2));
	f3 : Full_Adder port map(A => A(3), B => B(3), Cin => mid(2), S => S(3), Cout => mid(3));
	f4 : Full_Adder port map(A => A(4), B => B(4), Cin => mid(3), S => S(4), Cout => mid(4));
	f5 : Full_Adder port map(A => A(5), B => B(5), Cin => mid(4), S => S(5), Cout => mid(5));
	f6 : Full_Adder port map(A => A(6), B => B(6), Cin => mid(5), S => S(6), Cout => mid(6));
	f7 : Full_Adder port map(A => A(7), B => B(7), Cin => mid(6), S => S(7), Cout => open);
	
end struct;