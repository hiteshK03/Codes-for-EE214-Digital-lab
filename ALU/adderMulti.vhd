library ieee;
use ieee.std_logic_1164.all;

entity EightInputAdder is

	port(A, B, C, D, E, F, G, H : in std_logic_vector(7 downto 0);
		  M : out std_logic_vector(7 downto 0));
		  
end entity EightInputAdder;

architecture struct of EightInputAdder is

	component EightBitAdder
		port(A, B : in std_logic_vector(7 downto 0);
		  S : out std_logic_vector(7 downto 0));
	end component;
	
	signal sum0, sum1, sum2, sum3, sum4, sum5, sum6: std_logic_vector(7 downto 0);
	
begin

	f0 : EightBitAdder port map (A => A, B => B, S => sum0);
	f1 : EightBitAdder port map (A => sum0, B => C, S => sum1);
	f2 : EightBitAdder port map (A => sum1, B => D, S => sum2);
	f3 : EightBitAdder port map (A => sum2, B => E, S => sum3);
	f4 : EightBitAdder port map (A => sum3, B => F, S => sum4);
	f5 : EightBitAdder port map (A => sum4, B => G, S => sum5);
	f6 : EightBitAdder port map (A => sum5, B => H, S => M);
	
end struct;