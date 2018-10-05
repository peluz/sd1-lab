library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity testbench is
    Port ( s_pred : in  STD_LOGIC_VECTOR (4 downto 0);
           s_gm : in  STD_LOGIC_VECTOR (4 downto 0);
           a : out  STD_LOGIC_VECTOR (3 downto 0);
           b : out  STD_LOGIC_VECTOR (3 downto 0));
end testbench;

architecture Behavioral of testbench is
begin
	process
		variable cont_a, cont_b : STD_LOGIC_VECTOR (3 downto 0);
	begin
		
		report "Iniciando teste..." severity NOTE;
		
		cont_a := "0000";
		cont_b := "0000";
		
		for i in 1 to 16 loop
			for j in 1 to 16 loop
				
				a <= cont_a;
				b <= cont_b;
				wait for 500 ns;
				
				assert (s_pred = s_gm) report "Falhou i =" & 
				                              integer'image(i) & 
														"j =" & 
														integer'image(j)
														severity ERROR;
				cont_b := cont_b + 1;
			end loop;
			cont_a := cont_a + 1;
		end loop;
		
		report "Teste finalizado com sucesso!" severity NOTE;
		
		wait;
		
	end process;
end Behavioral;

