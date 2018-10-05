library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shifter is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           LOAD : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (3 downto 0);
           DIR : in  STD_LOGIC;
           L : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end shifter;

architecture Behavioral of shifter is
	signal Qbuf : STD_LOGIC_VECTOR(3 downto 0);
begin
	process(CLK)
	begin
		if RST = '1' then Qbuf <= "0000";
		elsif LOAD = '1' then Qbuf <= D;
		elsif rising_edge(CLK) then
			case DIR is
				WHEN '0' => Qbuf <= Qbuf(2 downto 0) & L;
				WHEN '1' => Qbuf <= R & Qbuf(3 downto 1);
				WHEN others => Qbuf <= Qbuf;
			end case;
		end if;
	end process;
	Q <= Qbuf;	
end Behavioral;

