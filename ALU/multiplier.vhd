library ieee;
use ieee.std_logic_1164.all;

entity EightBitMultiplier is

	port(A, B : in std_logic_vector(7 downto 0);
		  Z : out std_logic_vector(7 downto 0));
		  
end entity EightBitMultiplier;

architecture struct of EightBitMultiplier is

	component EightInputAdder
		port(A, B, C, D, E, F, G, H : in std_logic_vector(7 downto 0);
		  M : out std_logic_vector(7 downto 0));
	end component;

	component leftShifter
		port(A, B : in std_logic_vector(7 downto 0);
		  C : out std_logic_vector(7 downto 0));
	end component;

	component checkBool
		port(X : in std_logic_vector(7 downto 0);
		 S : in std_logic;
		  Y : out std_logic_vector(7 downto 0));
	end component;

	signal mid0, mid1, mid2, mid3, mid4, mid5, mid6: std_logic_vector(7 downto 0);
	signal sum0, sum1, sum2, sum3, sum4, sum5, sum6, sum7: std_logic_vector(7 downto 0);
	
begin

	f0 : checkBool port map (X => A, S => B(0), Y => sum0);
	f1 : checkBool port map (X => A, S => B(1), Y => mid0);
	f2 : leftShifter port map (A => mid0, B => "00000001", C => sum1); 
	f3 : checkBool port map (X => A, S => B(2), Y => mid1);
	f4 : leftShifter port map (A => mid1, B => "00000010", C => sum2); 
	f5 : checkBool port map (X => A, S => B(3), Y => mid2);
	f6 : leftShifter port map (A => mid2, B => "00000011", C => sum3); 
	f7 : checkBool port map (X => A, S => B(4), Y => mid3);
	f8 : leftShifter port map (A => mid3, B => "00000100", C => sum4); 
	f9 : checkBool port map (X => A, S => B(5), Y => mid4);
	f10 : leftShifter port map (A => mid4, B => "00000101", C => sum5); 
	f11 : checkBool port map (X => A, S => B(6), Y => mid5);
	f12 : leftShifter port map (A => mid5, B => "00000110", C => sum6); 
	f13 : checkBool port map (X => A, S => B(7), Y => mid6);
	f14 : leftShifter port map (A => mid6, B => "00000111", C => sum7);

	s : EightInputAdder port map (A => sum0, B => sum1, C => sum2, D => sum3, E => sum4, F => sum5, G => sum6, H => sum7, M => Z); 
	
end struct;