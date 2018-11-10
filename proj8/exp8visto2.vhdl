library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp8visto2 is
  port( clock : in STD_LOGIC;
        reset : in STD_LOGIC;        
        T60 : out STD_LOGIC;
        T20 : out STD_LOGIC;
        T6 : out STD_LOGIC;
        T5 : out STD_LOGIC;
        num7seg : out STD_LOGIC_VECTOR(7 downto 0);
        displays : out STD_LOGIC_VECTOR(3 downto 0) );
end exp8visto2;

architecture exp8visto2_arch of exp8visto2 is
	component exp8visto1 is
		port( clock : in STD_LOGIC;
			  reset : in STD_LOGIC;        
			  enable : in STD_LOGIC;
			  load : in STD_LOGIC;
			  dezload : in STD_LOGIC_VECTOR(3 downto 0);
			  uniload : in STD_LOGIC_VECTOR(3 downto 0);
			  dezena : out STD_LOGIC_VECTOR(3 downto 0);
			  unidade : out STD_LOGIC_VECTOR(3 downto 0) );
	end component;
	
	component convbinario7seg is
		port( numbinario : in STD_LOGIC_VECTOR(3 downto 0);
            num7seg : out STD_LOGIC_VECTOR(7 downto 0) );
	end component;
	
	component timeflags is
		port( dezena : in STD_LOGIC_VECTOR(3 downto 0);
            unidade : in STD_LOGIC_VECTOR(3 downto 0);
            T60 : out STD_LOGIC;
            T20 : out STD_LOGIC;
            T6 : out STD_LOGIC;
            T5 : out STD_LOGIC );
	end component;
	
	component mostrador is
		port( num7seg3 : in STD_LOGIC_VECTOR(7 downto 0);
            num7seg2 : in STD_LOGIC_VECTOR(7 downto 0);
            num7seg1 : in STD_LOGIC_VECTOR(7 downto 0);
            num7seg0 : in STD_LOGIC_VECTOR(7 downto 0);
            clock50Mhz : in STD_LOGIC; --clock da placa
            num7seg : out STD_LOGIC_VECTOR(7 downto 0);
            displays : out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	
	signal dez_bit, uni_bit : STD_LOGIC_VECTOR(3 downto 0);
	signal dez_seg, uni_seg : STD_LOGIC_VECTOR(7 downto 0);
	
begin

	cont0: exp8visto1 port map(clock, reset, '0', '0', "0000",
	                        "0000", dez_bit, uni_bit);
	conv0: convbinario7seg port map(dez_bit, dez_seg);
	conv1: convbinario7seg port map(uni_bit, uni_seg);
	time0: timeflags port map(dez_bit, uni_bit, T60,
	                          T20, T6, T5);
	most0: mostrador port map("11111111", dez_seg,
	                          uni_seg, "11111111",
									  clock, num7seg, displays);

end exp8visto2_arch;



