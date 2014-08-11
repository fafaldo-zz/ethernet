--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : MII_schem.vhf
-- /___/   /\     Timestamp : 07/28/2014 19:39:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/fafik/Desktop/przyk/ethernet-master/ethernet-master/ethernet4b/ipcore_dir -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/fafik/Desktop/przyk/ethernet-master/ethernet-master/ethernet4b/MII_schem.vhf -w C:/Users/fafik/Desktop/przyk/ethernet-master/ethernet-master/ethernet4b/MII_schem.sch
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
   port ( CLK      : in    std_logic; 
          E_RX_CLK : in    std_logic; 
          E_RX_D   : in    std_logic_vector (3 downto 0); 
          E_RX_DV  : in    std_logic; 
          RESET    : in    std_logic; 
          ROT_A    : in    std_logic; 
          ROT_B    : in    std_logic; 
          test     : out   std_logic_vector (7 downto 0); 
          VGA_B    : out   std_logic; 
          VGA_G    : out   std_logic; 
          VGA_HS   : out   std_logic; 
          VGA_R    : out   std_logic; 
          VGA_VS   : out   std_logic);
end MII_schem;

architecture BEHAVIORAL of MII_schem is
   attribute BOX_TYPE   : string ;
   signal EMPTY    : std_logic;
   signal FULL     : std_logic;
   signal XLXN_21  : std_logic;
   signal XLXN_26  : std_logic;
   signal XLXN_28  : std_logic;
   signal XLXN_29  : std_logic_vector (7 downto 0);
   signal XLXN_30  : std_logic;
   signal XLXN_35  : std_logic;
   signal XLXN_36  : std_logic_vector (7 downto 0);
   signal XLXN_56  : std_logic;
   signal XLXN_57  : std_logic;
   signal XLXN_58  : std_logic;
   signal XLXN_59  : std_logic;
   signal XLXN_60  : std_logic_vector (11 downto 0);
   signal XLXN_61  : std_logic_vector (10 downto 0);
   signal XLXN_62  : std_logic_vector (0 downto 0);
   signal XLXN_63  : std_logic_vector (3 downto 0);
   signal XLXN_65  : std_logic_vector (7 downto 0);
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
   
   component vga_display
      port ( clk        : in    std_logic; 
             start      : in    std_logic; 
             reset      : in    std_logic; 
             ram_output : in    std_logic_vector (7 downto 0); 
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
   
   component fifo_control_unit
      port ( clk      : in    std_logic; 
             Rx_Clk   : in    std_logic; 
             Rx_DV    : in    std_logic; 
             POP      : in    std_logic; 
             doB      : in    std_logic_vector (7 downto 0); 
             Rx_D     : in    std_logic_vector (3 downto 0); 
             clkA     : out   std_logic; 
             clkB     : out   std_logic; 
             enA      : out   std_logic; 
             enB      : out   std_logic; 
             empty    : out   std_logic; 
             full     : out   std_logic; 
             EOF      : out   std_logic; 
             addrA    : out   std_logic_vector (11 downto 0); 
             addrB    : out   std_logic_vector (10 downto 0); 
             diA      : out   std_logic_vector (3 downto 0); 
             data_out : out   std_logic_vector (7 downto 0); 
             test     : out   std_logic_vector (7 downto 0); 
             weA      : out   std_logic_vector (0 downto 0));
   end component;
   
   component blk_mem_gen_v7_3
      port ( addra : out   std_logic_vector (11 downto 0); 
             dina  : out   std_logic_vector (3 downto 0); 
             ena   : in    std_logic; 
             wea   : out   std_logic_vector (0 downto 0); 
             clka  : in    std_logic; 
             addrb : out   std_logic_vector (10 downto 0); 
             enb   : in    std_logic; 
             clkb  : in    std_logic; 
             doutb : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_2 : RotaryEnc
      port map (Clk=>CLK,
                ROT_A=>ROT_A,
                ROT_B=>ROT_B,
                RotL=>open,
                RotR=>XLXN_21);
   
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
                ram_output(7 downto 0)=>XLXN_36(7 downto 0),
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
   
   XLXI_15 : fifo_control_unit
      port map (clk=>CLK,
                doB(7 downto 0)=>XLXN_65(7 downto 0),
                POP=>XLXN_26,
                Rx_Clk=>E_RX_CLK,
                Rx_D(3 downto 0)=>E_RX_D(3 downto 0),
                Rx_DV=>E_RX_DV,
                addrA(11 downto 0)=>XLXN_60(11 downto 0),
                addrB(10 downto 0)=>XLXN_61(10 downto 0),
                clkA=>XLXN_56,
                clkB=>XLXN_57,
                data_out(7 downto 0)=>XLXN_36(7 downto 0),
                diA(3 downto 0)=>XLXN_63(3 downto 0),
                empty=>EMPTY,
                enA=>XLXN_58,
                enB=>XLXN_59,
                EOF=>open,
                full=>FULL,
                test(7 downto 0)=>test(7 downto 0),
                weA(0)=>XLXN_62(0));
   
   XLXI_16 : blk_mem_gen_v7_3
      port map (clka=>XLXN_56,
                clkb=>XLXN_57,
                ena=>XLXN_58,
                enb=>XLXN_59,
                addra(11 downto 0)=>XLXN_60(11 downto 0),
                addrb(10 downto 0)=>XLXN_61(10 downto 0),
                dina(3 downto 0)=>XLXN_63(3 downto 0),
                doutb(7 downto 0)=>XLXN_65(7 downto 0),
                wea(0)=>XLXN_62(0));
   
end BEHAVIORAL;


