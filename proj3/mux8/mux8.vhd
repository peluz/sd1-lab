library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8 is
    Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC);
end mux8;

architecture Behavioral of mux8 is

begin
Y <=  D(0) when (S="000") else
		D(1) when (S="001") else
		D(2) when (S="010") else
		D(3) when (S="011") else
		D(4) when (S="100") else
		D(5) when (S="101") else
		D(6) when (S="110") else
		D(7);

end Behavioral;

