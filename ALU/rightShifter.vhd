library ieee;
use ieee.std_logic_1164.all;

entity rightShifter is

	port(A, B : in std_logic_vector(7 downto 0);
		  C : out std_logic_vector(7 downto 0));
		  
end entity rightShifter;

architecture easy of RightShifter is
	component shiftRightbyOne
		port(X : in std_logic_vector(7 downto 0);
		 	S : in std_logic;
		  	Y : out std_logic_vector(7 downto 0));
	end component;

	component shiftRightbyTwo
		port(X : in std_logic_vector(7 downto 0);
		 	S : in std_logic;
		  	Y : out std_logic_vector(7 downto 0));
	end component;

	component shiftRightbyFour
		port(X : in std_logic_vector(7 downto 0);
		 	S : in std_logic;
		  	Y : out std_logic_vector(7 downto 0));
	end component;

	signal mid0: std_logic_vector(7 downto 0);
	signal mid1: std_logic_vector(7 downto 0);
	signal mid2: std_logic_vector(7 downto 0);

begin

	f0 : shiftRightbyOne port map(X => A, S => B(0), Y => mid0);
	f1 : shiftRightbyTwo port map(X => mid0, S => B(1), Y => mid1);
	f2 : shiftRightbyFour port map(X => mid1, S => B(2), Y => mid2);

	C <= mid2 when (B < "00001000") else "00000000";

end easy;