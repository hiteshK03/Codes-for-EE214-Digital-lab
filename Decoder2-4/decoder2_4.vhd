library ieee;
library work;
use work.Gates.all;
use ieee.std_logic_1164.all;

entity Decoder2_4 is

	port (dcdr_in : in std_logic_vector(1 downto 0);
          	dcdr_out: out std_logic_vector(3 downto 0));
	
end entity Decoder2_4;

--architecture struct of Decoder2_4 is

--begin

--	dcdr_out(0) <= not dcdr_in(1) and not dcdr_in(0);
--	dcdr_out(1) <= not dcdr_in(1) and dcdr_in(0);
--	dcdr_out(2) <= dcdr_in(1) and not dcdr_in(0);
--	dcdr_out(3) <= dcdr_in(1) and dcdr_in(0);
	
--end architecture struct;

architecture struct of Decoder2_4 is
	signal tC, tS : std_logic; 

begin
	f0 : welNOR2 port map (A => dcdr_in(0), B => dcdr_in(1), Y => dcdr_out(0));
	f1 : INVERTER port map (A => dcdr_in(1), Y => tS);
	f2 : welAND2 port map (A => dcdr_in(0), B => tS, Y => dcdr_out(1));	
	f3 : INVERTER port map (A => dcdr_in(0), Y => tC);
	f4 : welAND2 port map (A => tC, B => dcdr_in(1), Y => dcdr_out(2));
	f5 : welAND2 port map (A => dcdr_in(0), B => dcdr_in(1), Y => dcdr_out(3));		
	
end architecture struct;