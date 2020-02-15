library ieee;
use ieee.std_logic_1164.all;

entity checkBool is

	port(X : in std_logic_vector(7 downto 0);
		 S : in std_logic;
		  Y : out std_logic_vector(7 downto 0));
		  
end entity checkBool;

architecture easy of checkBool is

begin

	Y <= X when S='1' else "00000000";

end easy;