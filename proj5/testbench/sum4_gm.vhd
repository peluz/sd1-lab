library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity sum4_gm is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (4 downto 0));
end sum4_gm;

architecture Behavioral of sum4_gm is

begin
	S <= unsigned('0' & A) + unsigned('0' & B); 
end Behavioral;

