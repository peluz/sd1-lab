library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end adder;

architecture adder_arc of adder is

begin
	Cout <= (A AND B) OR (A AND Cin) OR (B AND Cin);
	S <= A XOR B XOR Cin;
end adder_arc;

