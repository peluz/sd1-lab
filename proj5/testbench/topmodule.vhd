library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity topmodule is
end topmodule;

architecture Behavioral of topmodule is
	component sum4 is
		Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
             B : in  STD_LOGIC_VECTOR (3 downto 0);
             S : out  STD_LOGIC_VECTOR (4 downto 0));
	end component;
	
	component sum4_gm is
		Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
             B : in  STD_LOGIC_VECTOR (3 downto 0);
             S : out  STD_LOGIC_VECTOR (4 downto 0));
	end component;
	
	component testbench is
		PORT (s_pred : in STD_LOGIC_VECTOR (4 downto 0);
				s_gm :  in STD_LOGIC_VECTOR (4 downto 0);
				a : out  STD_LOGIC_VECTOR (3 downto 0);
				b : out STD_LOGIC_VECTOR (3 downto 0));
	end component;

begin
	U0: sum4 port map(a, b, s_pred);
	U1: sum4_gm port map(a, b, s_gm);
	U2: testbench port map(s_pred, s_gm, a, b);
end Behavioral;

