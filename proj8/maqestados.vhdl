library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity maqestados is
  port( clock : in STD_LOGIC;
        ligadesliga : in STD_LOGIC;
        sensorA : in STD_LOGIC;
        sensorB : in STD_LOGIC;
        T60 : in STD_LOGIC;
        T20 : in STD_LOGIC;
        T6 : in STD_LOGIC;
        T5 : in STD_LOGIC;
        resetcounter : out STD_LOGIC;
        RYGsemaforoA : out STD_LOGIC_VECTOR(2 downto 0);
        RYGsemaforoB : out STD_LOGIC_VECTOR(2 downto 0) );
end maqestados;

architecture maqestados_arch of maqestados is
	type estado is (GR, YR, RR1, RG, RY, RR2, YY, NN);
	signal currentState, nextState : estado;
	signal switch : STD_LOGIC_VECTOR(2 downto 0);
begin
	switch <= T20 & sensorA & sensorB;
	
	sync_proc: process(clock)
	begin
		if rising_edge(clock) then
			currentState <= nextState;
		end if;
	end process sync_proc;
	
	comb_proc: process(currentState, ligadesliga, sensorA,
	                   sensorB, T60, T20, T6, T5, switch)
	begin
		case currentState is
		
			when GR =>
				RYGsemaforoA <= "001";
				RYGsemaforoB <= "100";
				if (ligadesliga = '0') then resetcounter <= '1'; nextState <= YY;
				elsif (T60 = '1' or switch = "101" ) then
					resetcounter <= '1'; nextState <= YR;
				else resetcounter <= '0'; nextState <= GR;
				end if;
				
			when YR =>
				RYGsemaforoA <= "010";
				RYGsemaforoB <= "100";
				if (ligadesliga = '0') then resetcounter <= '1'; nextState <= YY;
				elsif (T6 = '1') then
					resetcounter <= '1'; nextState <= RR1;
				else resetcounter <= '0'; nextState <= YR;
				end if;
				
			when RR1 =>
				RYGsemaforoA <= "100";
				RYGsemaforoB <= "100";
				if (ligadesliga = '0') then resetcounter <= '1'; nextState <= YY;
				elsif (T5 = '1') then
					resetcounter <= '1'; nextState <= RG;
				else resetcounter <= '0'; nextState <= RR1;
				end if;
				
			when RG =>
				RYGsemaforoA <= "100";
				RYGsemaforoB <= "001";
				if (ligadesliga = '0') then resetcounter <= '1'; nextState <= YY;
				elsif (T60 = '1' or switch = "110") then
					resetcounter <= '1'; nextState <= RY;
				else resetcounter <= '0'; nextState <= RG;
				end if;
				
			when RY =>
				RYGsemaforoA <= "100";
				RYGsemaforoB <= "010";
				if (ligadesliga = '0') then resetcounter <= '1'; nextState <= YY;
				elsif (T6 = '1') then
					resetcounter <= '1'; nextState <= RR2;
				else resetcounter <= '0'; nextState <= RY;
				end if;
				
			when RR2 =>
				RYGsemaforoA <= "100";
				RYGsemaforoB <= "100";
				if (ligadesliga = '0') then resetcounter <= '1'; nextState <= YY;
				elsif (T5 = '1') then
					resetcounter <= '1'; nextState <= GR;
				else resetcounter <= '0'; nextState <= RR2;
				end if;
				
			when YY =>
				RYGsemaforoA <= "010";
				RYGsemaforoB <= "010";
				if (ligadesliga = '0') then resetcounter <= '1'; nextState <= NN;
				else resetcounter <= '1'; nextState <= GR;
				end if;
				
			when NN =>
				RYGsemaforoA <= "000";
				RYGsemaforoB <= "000";
				if (ligadesliga = '0') then resetcounter <= '1'; nextState <= YY;
				else resetcounter <= '1'; nextState <= GR;
				end if;
				
			when others =>
				RYGsemaforoA <= "001";
				RYGsemaforoB <= "100";
				if (ligadesliga = '0') then resetcounter <= '1'; nextState <= YY;
				elsif (T60 = '1' or switch = "101") then
					resetcounter <= '1'; nextState <= YR;
				else resetcounter <= '0'; nextState <= GR;
				end if;
				
		end case;
	end process comb_proc;
end maqestados_arch;



