library ieee;
library work;
use work.Gates.all;
use ieee.std_logic_1164.all;

entity Mux4_1 is
	
	port(
          mux_in : in std_logic_vector(3 downto 0);
          mux_sel: in std_logic_vector(1 downto 0);
          mux_out : out std_logic );

end entity Mux4_1;	

-- Concurrent Signal Assessment

--architecture dataflow of Mux4_1 is

--	signal mid: std_logic_vector(3 downto 0);

--begin 

--	mid(0) <= not mux_sel(0) and not mux_sel(1) and mux_in(0);
--	mid(1) <= mux_sel(0) and not mux_sel(1) and mux_in(1);
--	mid(2) <= not mux_sel(0) and mux_sel(1) and mux_in(2);
--	mid(3) <= mux_sel(0) and mux_sel(1) and mux_in(3); 
	
--	mux_out <= mid(0) or mid(1) or mid(2) or mid(3);

--end architecture dataflow;

architecture struct of Mux4_1 is
	signal mid: std_logic_vector(3 downto 0);
	signal tS : std_logic_vector(3 downto 0);
	signal tC : std_logic_vector(1 downto 0);
	signal inv : std_logic_vector(1 downto 0); 

begin

	f0 : welNOR2 port map (A => mux_sel(0), B => mux_sel(1), Y => tS(0));
	f1 : welAND2 port map (A => tS(0), B => mux_in(0), Y => mid(0));
	
	f2 : INVERTER port map (A => mux_sel(1), Y => inv(0));
	f3 : welAND2 port map (A => mux_sel(0), B => inv(0), Y => tS(1));
	f4 : welAND2 port map (A => tS(1), B => mux_in(1), Y => mid(1));
	
	f5 : INVERTER port map (A => mux_sel(0), Y => inv(1));
	f6 : welAND2 port map (A => mux_sel(1), B => inv(1), Y => ts(2));
	f7 : welAND2 port map (A => tS(2), B => mux_in(2), Y => mid(2));
	
	f8 : welAND2 port map (A => mux_sel(0), B => mux_sel(1), Y => tS(3));
	f9 : welAND2 port map (A => tS(3), B => mux_in(3), Y => mid(3));

	f10 : welOR2 port map (A => mid(0), B => mid(1), Y => tC(0));
	f11 : welOR2 port map (A => tC(0), B => mid(2), Y => tC(1));
	f12 : welOR2 port map (A => tC(1), B => mid(3), Y => mux_out);
	
end architecture struct;
