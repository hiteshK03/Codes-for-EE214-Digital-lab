library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
           output_vector: out std_logic_vector ( 3 downto 0) );
end entity;

architecture DutWrap of DUT is
   component Decoder2_4 is
     port(
          dcdr_in : in std_logic_vector(1 downto 0);
          dcdr_out: out std_logic_vector(3 downto 0) );
   end component ;
begin
   dcdr2_4_instance1 : Decoder2_4
             port map (
                dcdr_in   => input_vector(1 downto 0),
                dcdr_out   => output_vector(3 downto 0) ) ;
end DutWrap;