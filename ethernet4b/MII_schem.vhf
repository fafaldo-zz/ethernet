--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : MII_schem.vhf
-- /___/   /\     Timestamp : 06/18/2014 21:12:01
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/MII_schem.vhf -w C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/MII_schem.sch
--Design Name: MII_schem
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

entity MII_schem is
   port ( CLK           : in    std_logic; 
          E_RX_CLK      : in    std_logic; 
          E_RX_D        : in    std_logic_vector (3 downto 0); 
          E_RX_DV       : in    std_logic; 
          E_RX_ERR      : in    std_logic; 
          RESET         : in    std_logic; 
          ROT_A         : in    std_logic; 
          ROT_B         : in    std_logic; 
          DATA_RECEIVED : out   std_logic; 
          VGA_B         : out   std_logic; 
          VGA_G         : out   std_logic; 
          VGA_HS        : out   std_logic; 
          VGA_R         : out   std_logic; 
          VGA_VS        : out   std_logic);
end MII_schem;

architecture BEHAVIORAL of MII_schem is
   attribute BOX_TYPE   : string ;
   signal BUSY          : std_logic;
   signal test          : std_logic_vector (7 downto 0);
   signal XLXN_21       : std_logic;
   signal XLXN_23       : std_logic_vector (3 downto 0);
   signal XLXN_26       : std_logic;
   signal XLXN_28       : std_logic;
   signal XLXN_29       : std_logic_vector (7 downto 0);
   signal XLXN_30       : std_logic;
   signal XLXN_35       : std_logic;
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
   end component;
   
   component MII_RX
      port ( recv_strobe   : in    std_logic; 
             recv_clock    : in    std_logic; 
             recv_error    : in    std_logic; 
             clk           : in    std_logic; 
             reset         : in    std_logic; 
             ram_enable    : in    std_logic; 
             recv_data     : in    std_logic_vector (3 downto 0); 
             data_received : out   std_logic; 
             busy          : out   std_logic; 
             ram_output    : out   std_logic_vector (3 downto 0); 
             test          : out   std_logic_vector (7 downto 0));
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
   
   component vga_display
      port ( clk        : in    std_logic; 
             start      : in    std_logic; 
             reset      : in    std_logic; 
             ram_output : in    std_logic_vector (3 downto 0); 
             char_we    : out   std_logic; 
             ram_enable : out   std_logic; 
             char       : out   std_logic_vector (7 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_2 : RotaryEnc
      port map (Clk=>CLK,
                ROT_A=>ROT_A,
                ROT_B=>ROT_B,
                RotL=>open,
                RotR=>XLXN_21);
   
   XLXI_5 : MII_RX
      port map (clk=>CLK,
                ram_enable=>XLXN_26,
                recv_clock=>E_RX_CLK,
                recv_data(3 downto 0)=>E_RX_D(3 downto 0),
                recv_error=>E_RX_ERR,
                recv_strobe=>E_RX_DV,
                reset=>RESET,
                busy=>BUSY,
                data_received=>DATA_RECEIVED,
                ram_output(3 downto 0)=>XLXN_23(3 downto 0),
                test(7 downto 0)=>test(7 downto 0));
   
   XLXI_6 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_29(7 downto 0),
                Char_WE=>XLXN_28,
                Clk_Sys=>CLK,
                Clk_50MHz=>CLK,
                CursorOn=>XLXN_30,
                Goto00=>XLXN_30,
                Home=>XLXN_30,
                NewLine=>XLXN_30,
                ScrollClear=>XLXN_30,
                ScrollEn=>XLXN_30,
                Busy=>open,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_35,
                VGA_VS=>VGA_VS);
   
   XLXI_7 : vga_display
      port map (clk=>CLK,
                ram_output(3 downto 0)=>XLXN_23(3 downto 0),
                reset=>RESET,
                start=>XLXN_21,
                char(7 downto 0)=>XLXN_29(7 downto 0),
                char_we=>XLXN_28,
                ram_enable=>XLXN_26);
   
   XLXI_8 : GND
      port map (G=>XLXN_30);
   
   XLXI_9 : BUF
      port map (I=>XLXN_35,
                O=>VGA_R);
   
   XLXI_10 : BUF
      port map (I=>XLXN_35,
                O=>VGA_G);
   
   XLXI_11 : BUF
      port map (I=>XLXN_35,
                O=>VGA_B);
   
end BEHAVIORAL;


