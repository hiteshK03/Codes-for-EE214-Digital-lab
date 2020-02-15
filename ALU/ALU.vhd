library ieee;
use ieee.std_logic_1164.all;

entity ALU is

	port(A, B : in std_logic_vector(7 downto 0);
		 OP : in std_logic_vector(1 downto 0);
		  Z : out std_logic_vector(7 downto 0));
		  
end entity ALU;

architecture struct of ALU is

	component Mux4_1
		port(
          mux_in0 : in std_logic_vector(7 downto 0);
          mux_in1 : in std_logic_vector(7 downto 0);
          mux_in2 : in std_logic_vector(7 downto 0);
          mux_in3 : in std_logic_vector(7 downto 0);
          mux_sel: in std_logic_vector(1 downto 0);
          mux_out : out std_logic_vector(7 downto 0) );

	end component;

	component EightBitAdder
		port(A, B : in std_logic_vector(7 downto 0);
		  S : out std_logic_vector(7 downto 0));
	end component;

	component leftShifter
		port(A, B : in std_logic_vector(7 downto 0);
		  C : out std_logic_vector(7 downto 0));
	end component;

	component rightShifter
		port(A, B : in std_logic_vector(7 downto 0);
		  C : out std_logic_vector(7 downto 0));
	end component;

	component EightBitMultiplier
		port(A, B : in std_logic_vector(7 downto 0);
		  Z : out std_logic_vector(7 downto 0));
	end component;

	signal inp0, inp1, inp2, inp3: std_logic_vector(7 downto 0);
	
begin

	f0 : EightBitAdder port map (A => A, B => B, S => inp0);
	f1 : leftShifter port map (A => A, B => B, C => inp1);
	f2 : rightShifter port map (A => A, B => B, C => inp2);
	f3 : EightBitMultiplier port map (A => A, B => B, Z => inp3);

	m0 : Mux4_1 port map (mux_in0 => inp0, mux_in1 => inp1, mux_in2 => inp2, mux_in3 => inp3, mux_sel => OP, mux_out => Z);
	
end struct;