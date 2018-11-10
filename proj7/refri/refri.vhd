library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity refri is
    Port ( clock, reset : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (1 downto 0);
           L : out  STD_LOGIC;
           M : out  STD_LOGIC;
           N : out  STD_LOGIC);
end refri;

architecture Behavioral of refri is

	type estado is (INIT, S25, s50, s75,  s100, s125, l25, l50, l75);
	signal currentState, nextState: estado;

begin
	sync_proc: process(clock, reset)
	begin
		if (reset = '1') then
			currentState <= INIT;
		elsif rising_edge(clock) then
			currentState <= nextState;
		end if;
	end process sync_proc;
	
	comb_proc: process(currentState, A)
	begin
		case currentState is
			when INIT =>
				L <= '0';
				M <= '0';
				N <= '0';
			if (A = "01") then
				nextState <= S25;
			elsif (A = "10") then
				nextState <= s50;
			else
				nextState <= INIT;
			end if;
			when s25 =>
				L <= '0';
				M <= '0';
				N <= '0';
			if (A = "01") then
				nextState <= S50;
			elsif (A = "10") then
				nextState <= s75;
			elsif (A = "11") then
				nextState <= l25;
			else
				nextState <= s25;
			end if;
			when s50 =>
				L <= '0';
				M <= '0';
				N <= '0';
			if (A = "01") then
				nextState <= S75;
			elsif (A = "10") then
				nextState <= s100;
			elsif (A = "11") then
				nextState <= l50;
			else
				nextState <= l50;
			end if;
			when s75 =>
				L <= '0';
				M <= '0';
				N <= '0';
			if (A = "01") then
				nextState <= S100;
			elsif (A = "10") then
				nextState <= s125;
			elsif (A = "11") then
				nextState <= l75;
			else
				nextState <= s75;
			end if;
			when s100 =>
				L <= '1';
				M <= '0';
				N <= '0';
			if (A = "01") then
				nextState <= S25;
			elsif (A = "10") then
				nextState <= s50;
			else
				nextState <= INIT;
			end if;
			when s125 =>
				L <= '1';
				M <= '1';
				N <= '0';
			if (A = "01") then
				nextState <= S25;
			elsif (A = "10") then
				nextState <= s50;
			else
				nextState <= INIT;
			end if;
			when l25 =>
				L <= '0';
				M <= '1';
				N <= '0';
			if (A = "01") then
				nextState <= S25;
			elsif (A = "10") then
				nextState <= s50;
			else
				nextState <= INIT;
			end if;
			when l50 =>
				L <= '0';
				M <= '0';
				N <= '1';
			if (A = "01") then
				nextState <= S25;
			elsif (A = "10") then
				nextState <= s50;
			else
				nextState <= INIT;
			end if;
			when l75 =>
				L <= '0';
				M <= '1';
				N <= '1';
			if (A = "01") then
				nextState <= S25;
			elsif (A = "10") then
				nextState <= s50;
			else
				nextState <= INIT;
			end if;
		end case;
	end process comb_proc;

end Behavioral;

