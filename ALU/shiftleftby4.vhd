library ieee;
use ieee.std_logic_1164.all;

entity shiftLeftbyFour is

	port(X : in std_logic_vector(7 downto 0);
		 S : in std_logic;
		  Y : out std_logic_vector(7 downto 0));
		  
end entity shiftLeftbyFour;

architecture easy of shiftLeftbyFour is

begin
	Y(7) <= X(3) when S='1' else X(7);
	Y(6) <= X(2) when S='1' else X(6);
	Y(5) <= X(1) when S='1' else X(5);
	Y(4) <= X(0) when S='1' else X(4);
	Y(3) <= '0' when S='1' else X(3);
	Y(2) <= '0' when S='1' else X(2);
	Y(1) <= '0' when S='1' else X(1);
	Y(0) <= '0' when S='1' else X(0);
end easy;