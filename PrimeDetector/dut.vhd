library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
           output_vector: out std_logic_vector (0 downto 0));
end entity;

architecture DutWrap of DUT is
   component PrimeDetector is
          port(a3, a2, a1, a0 : in std_logic;
            decision : out std_logic);
   end component;
begin
   dut_instance1 : PrimeDetector
             port map (
                a3  => input_vector(3),
                a2  => input_vector(2),
                a1  => input_vector(1),
					 a0  => input_vector(0),
                decision => output_vector(0));
end DutWrap;
