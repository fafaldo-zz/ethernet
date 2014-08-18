--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : tx_schem.vhf
-- /___/   /\     Timestamp : 08/18/2014 22:22:20
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/tx_schem.vhf -w C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/tx_schem.sch
--Design Name: tx_schem
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

entity tx_schem is
   port ( clk      : in    std_logic; 
          E_TX_CLK : in    std_logic; 
          ROT_A    : in    std_logic; 
          ROT_B    : in    std_logic; 
          E_TXD    : out   std_logic_vector (3 downto 0); 
          E_TX_EN  : out   std_logic; 
          test     : out   std_logic_vector (7 downto 0); 
          VGA_B    : out   std_logic; 
          VGA_G    : out   std_logic; 
          VGA_HS   : out   std_logic; 
          VGA_R    : out   std_logic; 
          VGA_VS   : out   std_logic);
end tx_schem;

architecture BEHAVIORAL of tx_schem is
   attribute BOX_TYPE   : string ;
   signal XLXN_1                        : std_logic;
   signal XLXN_2                        : std_logic;
   signal XLXN_3                        : std_logic;
   signal XLXN_4                        : std_logic;
   signal XLXN_5                        : std_logic;
   signal XLXN_6                        : std_logic_vector (11 downto 0);
   signal XLXN_7                        : std_logic_vector (10 downto 0);
   signal XLXN_8                        : std_logic_vector (7 downto 0);
   signal XLXN_9                        : std_logic_vector (3 downto 0);
   signal XLXN_10                       : std_logic;
   signal XLXN_20                       : std_logic_vector (7 downto 0);
   signal XLXN_22                       : std_logic;
   signal XLXN_24                       : std_logic;
   signal XLXN_33                       : std_logic;
   signal E_TXD_DUMMY                   : std_logic_vector (3 downto 0);
   signal E_TX_EN_DUMMY                 : std_logic;
   signal XLXI_1_DIA_openSignal         : std_logic_vector (3 downto 0);
   signal XLXI_1_DIPB_openSignal        : std_logic_vector (0 downto 0);
   signal XLXI_1_SSRA_openSignal        : std_logic;
   signal XLXI_1_SSRB_openSignal        : std_logic;
   signal XLXI_1_WEA_openSignal         : std_logic;
   signal XLXI_2_data_in_openSignal     : std_logic_vector (7 downto 0);
   signal XLXI_2_EOF_openSignal         : std_logic;
   signal XLXI_2_PUSH_openSignal        : std_logic;
   signal XLXI_4_CursorOn_openSignal    : std_logic;
   signal XLXI_4_Goto00_openSignal      : std_logic;
   signal XLXI_4_Home_openSignal        : std_logic;
   signal XLXI_4_NewLine_openSignal     : std_logic;
   signal XLXI_4_ScrollClear_openSignal : std_logic;
   signal XLXI_5_reset_openSignal       : std_logic;
   component new_tx_frame_buffer
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
   
   component new_tx_fifo_control_unit
      port ( EOF     : in    std_logic; 
             clk     : in    std_logic; 
             Tx_Clk  : in    std_logic; 
             PUSH    : in    std_logic; 
             start   : in    std_logic; 
             doA     : in    std_logic_vector (3 downto 0); 
             data_in : in    std_logic_vector (7 downto 0); 
             clkA    : out   std_logic; 
             clkB    : out   std_logic; 
             enA     : out   std_logic; 
             enB     : out   std_logic; 
             weB     : out   std_logic; 
             empty   : out   std_logic; 
             full    : out   std_logic; 
             Tx_En   : out   std_logic; 
             busy    : out   std_logic; 
             addrA   : out   std_logic_vector (11 downto 0); 
             addrB   : out   std_logic_vector (10 downto 0); 
             diB     : out   std_logic_vector (7 downto 0); 
             Tx_D    : out   std_logic_vector (3 downto 0); 
             test    : out   std_logic_vector (7 downto 0));
   end component;
   
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
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
   
   component vga_tx_display
      port ( clk      : in    std_logic; 
             E_TX_CLK : in    std_logic; 
             E_TX_EN  : in    std_logic; 
             reset    : in    std_logic; 
             E_TXD    : in    std_logic_vector (3 downto 0); 
             Char_WE  : out   std_logic; 
             Char_DI  : out   std_logic_vector (7 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   E_TXD(3 downto 0) <= E_TXD_DUMMY(3 downto 0);
   E_TX_EN <= E_TX_EN_DUMMY;
   XLXI_1 : new_tx_frame_buffer
      port map (ADDRA(11 downto 0)=>XLXN_6(11 downto 0),
                ADDRB(10 downto 0)=>XLXN_7(10 downto 0),
                CLKA=>XLXN_1,
                CLKB=>XLXN_2,
                DIA(3 downto 0)=>XLXI_1_DIA_openSignal(3 downto 0),
                DIB(7 downto 0)=>XLXN_8(7 downto 0),
                DIPB(0)=>XLXI_1_DIPB_openSignal(0),
                ENA=>XLXN_3,
                ENB=>XLXN_4,
                SSRA=>XLXI_1_SSRA_openSignal,
                SSRB=>XLXI_1_SSRB_openSignal,
                WEA=>XLXI_1_WEA_openSignal,
                WEB=>XLXN_5,
                DOA(3 downto 0)=>XLXN_9(3 downto 0),
                DOB=>open,
                DOPB=>open);
   
   XLXI_2 : new_tx_fifo_control_unit
      port map (clk=>clk,
                data_in(7 downto 0)=>XLXI_2_data_in_openSignal(7 downto 0),
                doA(3 downto 0)=>XLXN_9(3 downto 0),
                EOF=>XLXI_2_EOF_openSignal,
                PUSH=>XLXI_2_PUSH_openSignal,
                start=>XLXN_10,
                Tx_Clk=>E_TX_CLK,
                addrA(11 downto 0)=>XLXN_6(11 downto 0),
                addrB(10 downto 0)=>XLXN_7(10 downto 0),
                busy=>open,
                clkA=>XLXN_1,
                clkB=>XLXN_2,
                diB(7 downto 0)=>XLXN_8(7 downto 0),
                empty=>open,
                enA=>XLXN_3,
                enB=>XLXN_4,
                full=>open,
                test(7 downto 0)=>test(7 downto 0),
                Tx_D(3 downto 0)=>E_TXD_DUMMY(3 downto 0),
                Tx_En=>E_TX_EN_DUMMY,
                weB=>XLXN_5);
   
   XLXI_3 : RotaryEnc
      port map (Clk=>clk,
                ROT_A=>ROT_A,
                ROT_B=>ROT_B,
                RotL=>open,
                RotR=>XLXN_10);
   
   XLXI_4 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_20(7 downto 0),
                Char_WE=>XLXN_33,
                Clk_Sys=>clk,
                Clk_50MHz=>clk,
                CursorOn=>XLXI_4_CursorOn_openSignal,
                Goto00=>XLXI_4_Goto00_openSignal,
                Home=>XLXI_4_Home_openSignal,
                NewLine=>XLXI_4_NewLine_openSignal,
                ScrollClear=>XLXI_4_ScrollClear_openSignal,
                ScrollEn=>XLXN_22,
                Busy=>open,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_24,
                VGA_VS=>VGA_VS);
   
   XLXI_5 : vga_tx_display
      port map (clk=>clk,
                E_TXD(3 downto 0)=>E_TXD_DUMMY(3 downto 0),
                E_TX_CLK=>E_TX_CLK,
                E_TX_EN=>E_TX_EN_DUMMY,
                reset=>XLXI_5_reset_openSignal,
                Char_DI(7 downto 0)=>XLXN_20(7 downto 0),
                Char_WE=>XLXN_33);
   
   XLXI_6 : VCC
      port map (P=>XLXN_22);
   
   XLXI_7 : BUF
      port map (I=>XLXN_24,
                O=>VGA_R);
   
   XLXI_8 : BUF
      port map (I=>XLXN_24,
                O=>VGA_G);
   
   XLXI_9 : BUF
      port map (I=>XLXN_24,
                O=>VGA_B);
   
end BEHAVIORAL;


