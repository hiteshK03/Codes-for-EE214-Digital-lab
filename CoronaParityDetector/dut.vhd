library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
           output_vector: out std_logic_vector (0 downto 0));
end entity;

architecture DutWrap of DUT is
   component detect_corona_oddparity is 
    port ( clk , r : in std_logic ;  X : in std_logic_vector(4 downto 0) ; W : out std_logic );
end component ;
begin
   Corona_instance : detect_corona_oddparity
             port map (
                clk  => input_vector(6),
                r  => input_vector(5),
                X  => input_vector(4 downto 0),

                W => output_vector(0));
end DutWrap;
