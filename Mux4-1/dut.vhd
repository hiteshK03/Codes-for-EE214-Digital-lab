library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
           output_vector: out std_logic_vector ( 0 downto 0) );
end entity;

architecture DutWrap of DUT is
   component Mux4_1 is
     port(
          mux_in : in std_logic_vector(3 downto 0);
          mux_sel: in std_logic_vector(1 downto 0);
          mux_out : out std_logic );
   end component;
begin
   mux4_1_instance1 : Mux4_1
             port map (
                mux_in   => input_vector(5 downto 2),
                mux_sel   => input_vector(1 downto 0),
                mux_out => output_vector(0) );
end DutWrap;
