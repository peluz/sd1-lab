library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jklatch is
    Port ( PR : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end jklatch;

architecture Behavioral of jklatch is
	signal JK : STD_LOGIC_VECTOR(1 downto 0);
	signal Qbuf : STD_LOGIC;
begin
	JK <= J & K;
	process(PR, CLR, CLK)
	begin
		if PR = '1' then Qbuf <= '1';
		elsif CLR = '1' then Qbuf <= '0';
		elsif rising_edge(CLK) then
			case JK is
				WHEN "00" => Qbuf <= Qbuf;
				WHEN "01" => Qbuf <= '0';
				WHEN "10" => Qbuf <= '1';
				WHEN "11" => Qbuf <= not(Qbuf);
				WHEN others => Qbuf <= Qbuf;
 			end case;
		end if;
	end process;
	Q <= Qbuf;
end Behavioral;

