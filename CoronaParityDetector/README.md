# Corona Parity Detector

Problem Statement:

* It is **rumoured** that coronavirus destroys each other in pairs ,  and the unpaired one is dangerous. So let us build an FSM to flag occurrence of an unpaired instance of "corona".

* entity detect_corona_oddparity port ( clk , r : in std_logic ;  X : in std_logic_vector(4 downto 0) ; W : out std_logic ) ; end entity ;\

* The 5-bit input signal X encodes blank-space and 26 lower-case characters ( blankspace=0, 'a'=1 , 'b'=2, 'c'=3 , .... , 'z'=26 ). The single bit mealy-output W is asserted-HIGH exactly when the last character ( namely 'a' ) of 1st or 3rd or 5th or .... odd-indexed instance of the sequence of characters of "corona" are noticed ( this virus character sequence need *not* be contiguous ).

* For instance, if the sequence appearing at X is "lllclllollllrllllollnllllallcorlllonllallcoronllllallll" then   the sequence of stabilised output should be "000000000000000000000000100000000000000000000000010000"
.... I hope you get the idea clearly  ....

--------------------------

<!-- ![mux_rtlviewer](https://user-images.githubusercontent.com/45922320/74584132-defda200-4ff4-11ea-9f0c-8171ab2d2317.png) -->


### Dependencies

[Quartus](https://www.intel.com/content/www/us/en/programmable/downloads/download-center.html)

[Optional] [Model-Sim](https://www.intel.com/content/www/us/en/programmable/downloads/download-center.html) is needed, if you want to test your logic through testbench and tracefile.
