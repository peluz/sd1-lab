library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity exp8visto3 is
  port( clock : in STD_LOGIC;
        ligadesliga : in STD_LOGIC;        
        sensorA : in STD_LOGIC;
        sensorB : in STD_LOGIC;
        num7seg : out STD_LOGIC_VECTOR(7 downto 0);
        displays : out STD_LOGIC_VECTOR(3 downto 0) );
end exp8visto3;

architecture exp8visto3_arch of exp8visto3 is

	component divclock is
		port( clock50MHz : in STD_LOGIC;
				clock1Hz : out STD_LOGIC );
	end component;
	
	component contador100 is
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
	
	component convsemaforo7seg is
		port( RYGsemaforo : in STD_LOGIC_VECTOR(2 downto 0);
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
	
	component maqestados is
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
	end component;
	
	signal dez_bit, uni_bit : STD_LOGIC_VECTOR(3 downto 0);
	signal dez_seg, uni_seg, a_seg, b_seg : STD_LOGIC_VECTOR(7 downto 0);
	signal semaforoA, semaforoB : STD_LOGIC_VECTOR(2 downto 0);
	signal slowclock, flag5, flag6, flag20, flag60, rst : STD_LOGIC;
begin

	clk: divclock port map(clock, slowclock);
	cont: contador100 port map(slowclock, rst, '0', '0', "0000",
	                           "0000", dez_bit, uni_bit);
	timeflag: timeflags port map(dez_bit, uni_bit, flag60, flag20,
	                             flag6, flag5);
   maq: maqestados port map(slowclock, ligadesliga, sensorA, sensorB,
	                         flag60, flag20, flag6, flag5, rst, semaforoA,
									 semaforoB);
	conv0: convsemaforo7seg port map(semaforoA, a_seg);
	conv1: convbinario7seg port map(dez_bit, dez_seg);
	conv2: convbinario7seg port map(uni_bit, uni_seg);
	conv3: convsemaforo7seg port map(semaforoB, b_seg);
	most: mostrador port map(a_seg, dez_seg, uni_seg, b_seg,
	                         clock, num7seg, displays);
	
end exp8visto3_arch;





