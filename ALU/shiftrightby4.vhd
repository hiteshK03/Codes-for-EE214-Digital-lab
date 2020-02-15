library ieee;
use ieee.std_logic_1164.all;

entity shiftRightbyFour is

	port(X : in std_logic_vector(7 downto 0);
		 S : in std_logic;
		  Y : out std_logic_vector(7 downto 0));
		  
end entity shiftRightbyFour;

architecture easy of shiftRightbyFour is

begin
	Y(7) <= '0' when S='1' else X(7);
	Y(6) <= '0' when S='1' else X(6);
	Y(5) <= '0' when S='1' else X(5);
	Y(4) <= '0' when S='1' else X(4);
	Y(3) <= X(7) when S='1' else X(3);
	Y(2) <= X(6) when S='1' else X(2);
	Y(1) <= X(5) when S='1' else X(1);
	Y(0) <= X(4) when S='1' else X(0);
end easy;