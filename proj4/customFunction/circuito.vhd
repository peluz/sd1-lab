library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity circuito is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           F : in  STD_LOGIC;
           G : in  STD_LOGIC;
           S : out  STD_LOGIC);
end circuito;

architecture Behavioral of circuito is
component mux8 is
	Port ( D : in  STD_LOGIC_VECTOR (7 downto 0);
          S : in  STD_LOGIC_VECTOR (2 downto 0);
          Y : out  STD_LOGIC);
end component;
component decoder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (15 downto 0));
end component;
signal ABCD : STD_LOGIC_VECTOR(3 downto 0);
signal EFG : STD_LOGIC_VECTOR(2 downto 0);
signal Y : STD_LOGIC_VECTOR(15 downto 0);
signal DS : STD_LOGIC_VECTOR(7 downto 0);
begin
	ABCD <= A & B & C & D;
	EFG <= E & F & G;
	D1: decoder port map(ABCD, Y);
	DS <= '1' & (Y(11) OR Y(10)) & '0' &
	      (Y(15) OR Y(9)) & '1' & Y(7) &
			(Y(0) OR Y(15)) & '0';
	M1: mux8 port map(DS, EFG, S);
	
end Behavioral;

