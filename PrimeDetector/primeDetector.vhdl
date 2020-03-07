library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity PrimeDetector is
	
	port(a3, a2, a1, a0 : in std_logic; decision : out std_logic);

end entity PrimeDetector;

--architecture struct of PrimeDetector is

--	signal inv1, inv2, inv3, out0, out1, n0, n1, n2, n3 : std_logic;

--begin

--	i0 : INVERTER port map (a1, inv1);
--	i1 : INVERTER port map (a2, inv2);
--	i2 : INVERTER port map (a3, inv3);
--	o0 : welOR2 port map (a0, inv3, out0);
--	o1 : welOR2 port map (inv1, inv3, out1);
--	p0 : welAND2 port map (a2, a0, n0);
--	p1 : welAND2 port map (n0, out1, n1);
--	p2 : welAND2 port map (inv2, a1, n2);
--	p3 : welAND2 port map (n2, out0, n3);
--	o2 : welOR2 port map (n3, n1, decision);

--end architecture struct;

architecture behav of PrimeDetector is

begin

	process (a3, a2, a1, a0)

	begin

		if (a3 = '0' )


	
end architecture behav;