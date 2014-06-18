--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : MII_test3.vhf
-- /___/   /\     Timestamp : 03/25/2014 12:16:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/XilinxPrj/ethernet4/MII_test3.vhf -w C:/XilinxPrj/ethernet4/MII_test3.sch
--Design Name: MII_test3
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

entity MII_test3 is
   port ( Clk_50MHz : in    std_logic; 
          E_RX_CLK  : in    std_logic; 
          E_RX_D    : in    std_logic_vector (4 downto 0); 
          E_RX_DV   : in    std_logic; 
          ROT_A     : in    std_logic; 
          ROT_B     : in    std_logic; 
          dane2     : out   std_logic_vector (7 downto 0); 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end MII_test3;

architecture BEHAVIORAL of MII_test3 is
   attribute BOX_TYPE   : string ;
   signal led0                         : std_logic;
   signal led1                         : std_logic;
   signal led2                         : std_logic;
   signal XLXN_2                       : std_logic;
   signal XLXN_3                       : std_logic;
   signal XLXN_5                       : std_logic;
   signal XLXN_6                       : std_logic_vector (7 downto 0);
   signal XLXN_9                       : std_logic_vector (11 downto 0);
   signal XLXN_16                      : std_logic;
   signal XLXN_19                      : std_logic;
   signal XLXN_20                      : std_logic;
   signal XLXN_24                      : std_logic;
   signal XLXN_31                      : std_logic;
   signal XLXN_43                      : std_logic;
   signal XLXI_1_ram_output_openSignal : std_logic_vector (7 downto 0);
   component header_display
      port ( tx_busy     : in    std_logic; 
             busy        : in    std_logic; 
             clk         : in    std_logic; 
             start       : in    std_logic; 
             reset       : in    std_logic; 
             ram_output  : in    std_logic_vector (7 downto 0); 
             char_we     : out   std_logic; 
             ram_clk     : out   std_logic; 
             ram_enable  : out   std_logic; 
             char        : out   std_logic_vector (7 downto 0); 
             ram_address : out   std_logic_vector (11 downto 0));
   end component;
   
   component MII_RX
      port ( recv_strobe   : in    std_logic; 
             recv_clock    : in    std_logic; 
             recv_error    : in    std_logic; 
             next_frame    : in    std_logic; 
             clk           : in    std_logic; 
             reset         : in    std_logic; 
             ram_clk       : in    std_logic; 
             ram_enable    : in    std_logic; 
             recv_data     : in    std_logic_vector (4 downto 0); 
             ram_address   : in    std_logic_vector (11 downto 0); 
             data_received : out   std_logic; 
             busy          : out   std_logic; 
             ram_output    : out   std_logic_vector (7 downto 0); 
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
   
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
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
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   XLXI_1 : header_display
      port map (busy=>XLXN_24,
                clk=>Clk_50MHz,
                ram_output(7 downto 0)=>XLXI_1_ram_output_openSignal(7 downto 0),
                reset=>led0,
                start=>XLXN_3,
                tx_busy=>XLXN_2,
                char(7 downto 0)=>XLXN_6(7 downto 0),
                char_we=>XLXN_5,
                ram_address(11 downto 0)=>XLXN_9(11 downto 0),
                ram_clk=>open,
                ram_enable=>open);
   
   XLXI_2 : MII_RX
      port map (clk=>Clk_50MHz,
                next_frame=>XLXN_20,
                ram_address(11 downto 0)=>XLXN_9(11 downto 0),
                ram_clk=>XLXN_3,
                ram_enable=>XLXN_43,
                recv_clock=>E_RX_CLK,
                recv_data(4 downto 0)=>E_RX_D(4 downto 0),
                recv_error=>XLXN_19,
                recv_strobe=>E_RX_DV,
                reset=>led0,
                busy=>led2,
                data_received=>led1,
                ram_output(7 downto 0)=>dane2(7 downto 0),
                test=>open);
   
   XLXI_3 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_6(7 downto 0),
                Char_WE=>XLXN_5,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                CursorOn=>XLXN_16,
                Goto00=>XLXN_16,
                Home=>XLXN_16,
                NewLine=>XLXN_16,
                ScrollClear=>XLXN_16,
                ScrollEn=>XLXN_16,
                Busy=>XLXN_2,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_31,
                VGA_VS=>VGA_VS);
   
   XLXI_5 : RotaryEnc
      port map (Clk=>Clk_50MHz,
                ROT_A=>ROT_A,
                ROT_B=>ROT_B,
                RotL=>led0,
                RotR=>XLXN_3);
   
   XLXI_6 : GND
      port map (G=>XLXN_16);
   
   XLXI_7 : BUF
      port map (I=>XLXN_31,
                O=>VGA_R);
   
   XLXI_8 : BUF
      port map (I=>XLXN_31,
                O=>VGA_G);
   
   XLXI_9 : BUF
      port map (I=>XLXN_31,
                O=>VGA_B);
   
   XLXI_10 : VCC
      port map (P=>XLXN_43);
   
end BEHAVIORAL;


