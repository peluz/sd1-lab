--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: mux8_synthesis.vhd
-- /___/   /\     Timestamp: Fri Aug 31 16:43:06 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm mux8 -w -dir netgen/synthesis -ofmt vhdl -sim mux8.ngc mux8_synthesis.vhd 
-- Device	: xc3s100e-4-cp132
-- Input file	: mux8.ngc
-- Output file	: /home/pedro/Documents/unb/labCD/proj3/mux8/netgen/synthesis/mux8_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: mux8
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity mux8 is
  port (
    Y : out STD_LOGIC; 
    D : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    S : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end mux8;

architecture Structure of mux8 is
  signal D_0_IBUF_8 : STD_LOGIC; 
  signal D_1_IBUF_9 : STD_LOGIC; 
  signal D_2_IBUF_10 : STD_LOGIC; 
  signal D_3_IBUF_11 : STD_LOGIC; 
  signal D_4_IBUF_12 : STD_LOGIC; 
  signal D_5_IBUF_13 : STD_LOGIC; 
  signal D_6_IBUF_14 : STD_LOGIC; 
  signal D_7_IBUF_15 : STD_LOGIC; 
  signal Mmux_Y_3_f5_16 : STD_LOGIC; 
  signal Mmux_Y_4_17 : STD_LOGIC; 
  signal Mmux_Y_4_f5_18 : STD_LOGIC; 
  signal Mmux_Y_5_19 : STD_LOGIC; 
  signal Mmux_Y_51_20 : STD_LOGIC; 
  signal Mmux_Y_6_21 : STD_LOGIC; 
  signal S_0_IBUF_25 : STD_LOGIC; 
  signal S_1_IBUF_26 : STD_LOGIC; 
  signal S_2_IBUF_27 : STD_LOGIC; 
  signal Y_OBUF_29 : STD_LOGIC; 
begin
  Mmux_Y_2_f6 : MUXF6
    port map (
      I0 => Mmux_Y_4_f5_18,
      I1 => Mmux_Y_3_f5_16,
      S => S_2_IBUF_27,
      O => Y_OBUF_29
    );
  Mmux_Y_4_f5 : MUXF5
    port map (
      I0 => Mmux_Y_6_21,
      I1 => Mmux_Y_51_20,
      S => S_1_IBUF_26,
      O => Mmux_Y_4_f5_18
    );
  Mmux_Y_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => S_0_IBUF_25,
      I1 => D_0_IBUF_8,
      I2 => D_1_IBUF_9,
      O => Mmux_Y_6_21
    );
  Mmux_Y_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => S_0_IBUF_25,
      I1 => D_2_IBUF_10,
      I2 => D_3_IBUF_11,
      O => Mmux_Y_51_20
    );
  Mmux_Y_3_f5 : MUXF5
    port map (
      I0 => Mmux_Y_5_19,
      I1 => Mmux_Y_4_17,
      S => S_1_IBUF_26,
      O => Mmux_Y_3_f5_16
    );
  Mmux_Y_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => S_0_IBUF_25,
      I1 => D_4_IBUF_12,
      I2 => D_5_IBUF_13,
      O => Mmux_Y_5_19
    );
  Mmux_Y_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => S_0_IBUF_25,
      I1 => D_6_IBUF_14,
      I2 => D_7_IBUF_15,
      O => Mmux_Y_4_17
    );
  D_7_IBUF : IBUF
    port map (
      I => D(7),
      O => D_7_IBUF_15
    );
  D_6_IBUF : IBUF
    port map (
      I => D(6),
      O => D_6_IBUF_14
    );
  D_5_IBUF : IBUF
    port map (
      I => D(5),
      O => D_5_IBUF_13
    );
  D_4_IBUF : IBUF
    port map (
      I => D(4),
      O => D_4_IBUF_12
    );
  D_3_IBUF : IBUF
    port map (
      I => D(3),
      O => D_3_IBUF_11
    );
  D_2_IBUF : IBUF
    port map (
      I => D(2),
      O => D_2_IBUF_10
    );
  D_1_IBUF : IBUF
    port map (
      I => D(1),
      O => D_1_IBUF_9
    );
  D_0_IBUF : IBUF
    port map (
      I => D(0),
      O => D_0_IBUF_8
    );
  S_2_IBUF : IBUF
    port map (
      I => S(2),
      O => S_2_IBUF_27
    );
  S_1_IBUF : IBUF
    port map (
      I => S(1),
      O => S_1_IBUF_26
    );
  S_0_IBUF : IBUF
    port map (
      I => S(0),
      O => S_0_IBUF_25
    );
  Y_OBUF : OBUF
    port map (
      I => Y_OBUF_29,
      O => Y
    );

end Structure;

