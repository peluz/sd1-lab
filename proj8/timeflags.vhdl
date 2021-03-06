library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity timeflags is
  port( dezena : in STD_LOGIC_VECTOR(3 downto 0);
        unidade : in STD_LOGIC_VECTOR(3 downto 0);
        T60 : out STD_LOGIC;
        T20 : out STD_LOGIC;
        T6 : out STD_LOGIC;
        T5 : out STD_LOGIC );
end timeflags;

architecture timeflags_arch of timeflags is
begin
	T5 <= '1' when (unidade >= "1001" or dezena > "0000") else '0';
	T6 <= '1' when (unidade >= "1010" or dezena > "0000") else '0';
	T20 <= '1' when (dezena >= "0010") else '0';
	T60 <= '1' when (dezena >= "1010") else '0';
end timeflags_arch;
