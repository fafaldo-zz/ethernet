--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : new_schem.vhf
-- /___/   /\     Timestamp : 08/11/2014 21:05:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/fafik/Desktop/przyk/ethernet-master/ethernet-master/ethernet4b/new_schem.vhf -w C:/Users/fafik/Desktop/przyk/ethernet-master/ethernet-master/ethernet4b/new_schem.sch
--Design Name: new_schem
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity new_schem is
   port ( CLK      : in    std_logic; 
          E_RX_CLK : in    std_logic; 
          E_RX_D   : in    std_logic_vector (3 downto 0); 
          E_RX_DV  : in    std_logic; 
          ROT_A    : in    std_logic; 
          ROT_B    : in    std_logic; 
          empty    : out   std_logic; 
          EOF      : out   std_logic; 
          full     : out   std_logic; 
          VGA_B    : out   std_logic; 
          VGA_G    : out   std_logic; 
          VGA_HS   : out   std_logic; 
          VGA_R    : out   std_logic; 
          VGA_VS   : out   std_logic);
end new_schem;

architecture BEHAVIORAL of new_schem is
   attribute BOX_TYPE   : string ;
   signal XLXN_1                        : std_logic;
   signal XLXN_2                        : std_logic;
   signal XLXN_3                        : std_logic;
   signal XLXN_4                        : std_logic;
   signal XLXN_6                        : std_logic_vector (11 downto 0);
   signal XLXN_7                        : std_logic_vector (10 downto 0);
   signal XLXN_8                        : std_logic_vector (3 downto 0);
   signal XLXN_10                       : std_logic;
   signal XLXN_11                       : std_logic_vector (7 downto 0);
   signal XLXN_12                       : std_logic_vector (7 downto 0);
   signal XLXN_13                       : std_logic;
   signal XLXN_14                       : std_logic;
   signal XLXN_15                       : std_logic;
   signal XLXN_16                       : std_logic_vector (7 downto 0);
   signal XLXN_18                       : std_logic;
   signal XLXN_19                       : std_logic;
   signal XLXN_20                       : std_logic;
   signal XLXN_21                       : std_logic_vector (13 downto 0);
   signal XLXN_22                       : std_logic_vector (12 downto 0);
   signal XLXN_23                       : std_logic_vector (0 downto 0);
   signal XLXN_24                       : std_logic_vector (1 downto 0);
   signal XLXI_2_DIB_openSignal         : std_logic_vector (7 downto 0);
   signal XLXI_2_DIPB_openSignal        : std_logic_vector (0 downto 0);
   signal XLXI_2_SSRA_openSignal        : std_logic;
   signal XLXI_2_SSRB_openSignal        : std_logic;
   signal XLXI_2_WEB_openSignal         : std_logic;
   signal XLXI_4_reset_openSignal       : std_logic;
   signal XLXI_5_CursorOn_openSignal    : std_logic;
   signal XLXI_5_Goto00_openSignal      : std_logic;
   signal XLXI_5_Home_openSignal        : std_logic;
   signal XLXI_5_NewLine_openSignal     : std_logic;
   signal XLXI_5_ScrollClear_openSignal : std_logic;
   signal XLXI_5_ScrollEn_openSignal    : std_logic;
   signal XLXI_9_DIB_openSignal         : std_logic_vector (1 downto 0);
   signal XLXI_9_SSRA_openSignal        : std_logic;
   signal XLXI_9_SSRB_openSignal        : std_logic;
   signal XLXI_9_WEB_openSignal         : std_logic;
   component fifo_control_unit
      port ( clk      : in    std_logic; 
             Rx_Clk   : in    std_logic; 
             Rx_DV    : in    std_logic; 
             POP      : in    std_logic; 
             doB      : in    std_logic_vector (7 downto 0); 
             doEOFB   : in    std_logic_vector (1 downto 0); 
             Rx_D     : in    std_logic_vector (3 downto 0); 
             clkA     : out   std_logic; 
             clkB     : out   std_logic; 
             enA      : out   std_logic; 
             enB      : out   std_logic; 
             weA      : out   std_logic; 
             EOFenA   : out   std_logic; 
             EOFweA   : out   std_logic; 
             empty    : out   std_logic; 
             full     : out   std_logic; 
             EOF      : out   std_logic; 
             addrA    : out   std_logic_vector (11 downto 0); 
             addrB    : out   std_logic_vector (10 downto 0); 
             diA      : out   std_logic_vector (3 downto 0); 
             addrEOFA : out   std_logic_vector (13 downto 0); 
             addrEOFB : out   std_logic_vector (12 downto 0); 
             diEOFA   : out   std_logic_vector (0 downto 0); 
             data_out : out   std_logic_vector (7 downto 0); 
             test     : out   std_logic_vector (7 downto 0));
   end component;
   
   component new_frame_buffer
      port ( CLKA  : in    std_logic; 
             CLKB  : in    std_logic; 
             ENA   : in    std_logic; 
             ENB   : in    std_logic; 
             SSRA  : in    std_logic; 
             SSRB  : in    std_logic; 
             WEA   : in    std_logic; 
             WEB   : in    std_logic; 
             ADDRA : in    std_logic_vector (11 downto 0); 
             ADDRB : in    std_logic_vector (10 downto 0); 
             DIA   : in    std_logic_vector (3 downto 0); 
             DIB   : in    std_logic_vector (7 downto 0); 
             DIPB  : in    std_logic_vector (0 downto 0); 
             DOA   : out   std_logic_vector (3 downto 0); 
             DOB   : out   std_logic_vector (7 downto 0); 
             DOPB  : out   std_logic_vector (0 downto 0));
   end component;
   
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
   end component;
   
   component vga_display
      port ( clk        : in    std_logic; 
             start      : in    std_logic; 
             reset      : in    std_logic; 
             ram_output : in    std_logic_vector (7 downto 0); 
             char_we    : out   std_logic; 
             ram_enable : out   std_logic; 
             char       : out   std_logic_vector (7 downto 0));
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component new_eof_buffer
      port ( CLKA  : in    std_logic; 
             CLKB  : in    std_logic; 
             ENA   : in    std_logic; 
             ENB   : in    std_logic; 
             SSRA  : in    std_logic; 
             SSRB  : in    std_logic; 
             WEA   : in    std_logic; 
             WEB   : in    std_logic; 
             ADDRA : in    std_logic_vector (13 downto 0); 
             ADDRB : in    std_logic_vector (12 downto 0); 
             DIA   : in    std_logic_vector (0 downto 0); 
             DIB   : in    std_logic_vector (1 downto 0); 
             DOA   : out   std_logic_vector (0 downto 0); 
             DOB   : out   std_logic_vector (1 downto 0));
   end component;
   
begin
   XLXI_1 : fifo_control_unit
      port map (clk=>CLK,
                doB(7 downto 0)=>XLXN_11(7 downto 0),
                doEOFB(1 downto 0)=>XLXN_24(1 downto 0),
                POP=>XLXN_14,
                Rx_Clk=>E_RX_CLK,
                Rx_D(3 downto 0)=>E_RX_D(3 downto 0),
                Rx_DV=>E_RX_DV,
                addrA(11 downto 0)=>XLXN_6(11 downto 0),
                addrB(10 downto 0)=>XLXN_7(10 downto 0),
                addrEOFA(13 downto 0)=>XLXN_21(13 downto 0),
                addrEOFB(12 downto 0)=>XLXN_22(12 downto 0),
                clkA=>XLXN_1,
                clkB=>XLXN_2,
                data_out(7 downto 0)=>XLXN_12(7 downto 0),
                diA(3 downto 0)=>XLXN_8(3 downto 0),
                diEOFA(0)=>XLXN_23(0),
                empty=>empty,
                enA=>XLXN_3,
                enB=>XLXN_4,
                EOF=>EOF,
                EOFenA=>XLXN_19,
                EOFweA=>XLXN_20,
                full=>full,
                test=>open,
                weA=>XLXN_10);
   
   XLXI_2 : new_frame_buffer
      port map (ADDRA(11 downto 0)=>XLXN_6(11 downto 0),
                ADDRB(10 downto 0)=>XLXN_7(10 downto 0),
                CLKA=>XLXN_1,
                CLKB=>XLXN_2,
                DIA(3 downto 0)=>XLXN_8(3 downto 0),
                DIB(7 downto 0)=>XLXI_2_DIB_openSignal(7 downto 0),
                DIPB(0)=>XLXI_2_DIPB_openSignal(0),
                ENA=>XLXN_3,
                ENB=>XLXN_4,
                SSRA=>XLXI_2_SSRA_openSignal,
                SSRB=>XLXI_2_SSRB_openSignal,
                WEA=>XLXN_10,
                WEB=>XLXI_2_WEB_openSignal,
                DOA=>open,
                DOB(7 downto 0)=>XLXN_11(7 downto 0),
                DOPB=>open);
   
   XLXI_3 : RotaryEnc
      port map (Clk=>CLK,
                ROT_A=>ROT_A,
                ROT_B=>ROT_B,
                RotL=>open,
                RotR=>XLXN_13);
   
   XLXI_4 : vga_display
      port map (clk=>CLK,
                ram_output(7 downto 0)=>XLXN_12(7 downto 0),
                reset=>XLXI_4_reset_openSignal,
                start=>XLXN_13,
                char(7 downto 0)=>XLXN_16(7 downto 0),
                char_we=>XLXN_15,
                ram_enable=>XLXN_14);
   
   XLXI_5 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_16(7 downto 0),
                Char_WE=>XLXN_15,
                Clk_Sys=>CLK,
                Clk_50MHz=>CLK,
                CursorOn=>XLXI_5_CursorOn_openSignal,
                Goto00=>XLXI_5_Goto00_openSignal,
                Home=>XLXI_5_Home_openSignal,
                NewLine=>XLXI_5_NewLine_openSignal,
                ScrollClear=>XLXI_5_ScrollClear_openSignal,
                ScrollEn=>XLXI_5_ScrollEn_openSignal,
                Busy=>open,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_18,
                VGA_VS=>VGA_VS);
   
   XLXI_6 : BUF
      port map (I=>XLXN_18,
                O=>VGA_R);
   
   XLXI_7 : BUF
      port map (I=>XLXN_18,
                O=>VGA_G);
   
   XLXI_8 : BUF
      port map (I=>XLXN_18,
                O=>VGA_B);
   
   XLXI_9 : new_eof_buffer
      port map (ADDRA(13 downto 0)=>XLXN_21(13 downto 0),
                ADDRB(12 downto 0)=>XLXN_22(12 downto 0),
                CLKA=>XLXN_1,
                CLKB=>XLXN_2,
                DIA(0)=>XLXN_23(0),
                DIB(1 downto 0)=>XLXI_9_DIB_openSignal(1 downto 0),
                ENA=>XLXN_19,
                ENB=>XLXN_4,
                SSRA=>XLXI_9_SSRA_openSignal,
                SSRB=>XLXI_9_SSRB_openSignal,
                WEA=>XLXN_20,
                WEB=>XLXI_9_WEB_openSignal,
                DOA=>open,
                DOB(1 downto 0)=>XLXN_24(1 downto 0));
   
end BEHAVIORAL;


