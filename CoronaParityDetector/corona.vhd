library ieee;
use ieee.std_logic_1164.all;

entity detect_corona_oddparity is 
    port ( clk , r : in std_logic ;  X : in std_logic_vector(4 downto 0) ; W : out std_logic );
end entity ;

architecture Behave of detect_corona_oddparity is
  type Statetype is (S0, S1, S2, S3, S4, S5);
  signal Currstate, Nextstate: Statetype;
  signal odd,nxt_odd : std_logic ;

begin
  
  StateReg: process (clk, r)
  begin
    if (r = '1') then
      Currstate <= S0;
		odd <= '0';
    elsif (clk'event and clk = '1') then
      Currstate <= Nextstate;
		odd<=nxt_odd;
    end if;
  end process;

  CombLogic: process (Currstate, X)
    variable  odd_var,op : std_logic := '0';
--    odd_var := '0';
--    flip := '0';
  begin
    op := '0';
	 odd_var:=odd;
    --Nextstate <= S0;

    case Currstate is
      when S0 => 
             if (X = "00011") then 
               Nextstate <= S1;
--               W <= op;
             else
               Nextstate <= S0;
--               W <= op;
             end if;
      when S1 =>
             if (X = "01111") then 
               Nextstate <= S2;
--               W <= op;
             else
               Nextstate <= S1;
--               W <= op;
             end if;
      when S2 =>
             if (X = "10010")then 
               Nextstate <= S3;
--               W <= op;
             else
               Nextstate <= S2;
--               W <= op;
             end if;
      when S3 =>
             if (X = "01111") then 
               Nextstate <= S4;
--               W <= op;
             else
               Nextstate <= S3;
--               W <= op;
             end if;
      when S4 =>
             if (X = "01110") then 
               Nextstate <= S5;
--               W <= op;
             else
               Nextstate <= S4;
--               W <= op;
             end if;
      when S5 =>
             if (X = "00001") then 
               Nextstate <= S0;
               --flip := ((not odd) and '1') or (odd and '0');   
               --odd := flip; 
               if (odd = '0') then
                  op := '1';
                  odd_var := '1';
               else
                  odd_var := '0';
--                  W <= op;-
--               else
--                  op := '0';
--                  W <= op;
               end if;
             else
               Nextstate <= S5;
--               W <= op;
             end if;
      when others => null;
      end case;
		nxt_odd<=odd_var;
		W <= op;
  end process;

end Behave;
