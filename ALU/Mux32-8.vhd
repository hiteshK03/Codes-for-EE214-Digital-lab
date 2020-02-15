library ieee;
use ieee.std_logic_1164.all;

entity Mux4_1 is
	
	port(
          mux_in0 : in std_logic_vector(7 downto 0);
          mux_in1 : in std_logic_vector(7 downto 0);
          mux_in2 : in std_logic_vector(7 downto 0);
          mux_in3 : in std_logic_vector(7 downto 0);
          mux_sel: in std_logic_vector(1 downto 0);
          mux_out : out std_logic_vector(7 downto 0) );

end entity Mux4_1;	

architecture dataflow of Mux4_1 is

	signal mid0: std_logic_vector(7 downto 0);
	signal mid1: std_logic_vector(7 downto 0);
	signal mid2: std_logic_vector(7 downto 0);
	signal mid3: std_logic_vector(7 downto 0);

begin 

	mid0 <= mux_in0 when (not mux_sel(0) and not mux_sel(1)) = '1' else "00000000";
	mid1 <= mux_in1 when (mux_sel(0) and not mux_sel(1)) = '1' else "00000000";
	mid2 <= mux_in2 when (not mux_sel(0) and mux_sel(1)) = '1' else "00000000";
	mid3 <= mux_in3 when (mux_sel(0) and mux_sel(1)) = '1' else "00000000";
	
	mux_out <= mid0 or mid1 or mid2 or mid3;
	
end architecture dataflow;

