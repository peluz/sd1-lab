library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.all;

entity muxFunc is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC);
end muxFunc;

architecture Behavioral of muxFunc is
component mux is
    Port ( D : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end component;
signal NDX, NDY : STD_LOGIC_VECTOR(3 downto 0);
signal NS : STD_LOGIC_VECTOR(1 downto 0);
begin
	NDX <= '1' & not C & C & '0';
	NDY <= C & '0' & not C & '1';
	NS <= A & B;
	MX: mux port map(NDX, NS, X);
	MY: mux port map(NDY, NS, Y);
end Behavioral;

