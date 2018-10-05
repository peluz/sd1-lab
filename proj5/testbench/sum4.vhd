library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sum4 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (4 downto 0));
end sum4;

architecture Behavioral of sum4 is
component adder is
		Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;
signal C : STD_LOGIC_VECTOR (3 downto 0);
begin
	C(0) <= '0';
	S0: adder port map(A(0), B(0), C(0), S(0), C(1));
	S1: adder port map(A(1), B(1), C(1), S(1), C(2));
	S2: adder port map(A(2), B(2), C(2), S(2), C(3));
	S3: adder port map(A(3), B(3), C(3), S(3), S(4));
end Behavioral;

