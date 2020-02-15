library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
           output_vector: out std_logic_vector ( 7 downto 0) );
end entity;

architecture DutWrap of DUT is
   component ALU is
          port(A, B : in std_logic_vector(7 downto 0);
            OP : in std_logic_vector(1 downto 0);
            Z : out std_logic_vector(7 downto 0));
   end component;
begin
   ALU_instance1 : ALU
             port map (
                OP   => input_vector(17 downto 16),
                A   => input_vector(15 downto 8),
                B   => input_vector(7 downto 0),
                Z => output_vector(7 downto 0) );
end DutWrap;
