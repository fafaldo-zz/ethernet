--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : MII_schem.vhf
-- /___/   /\     Timestamp : 04/30/2014 16:36:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/XilinxPrj/ethernet4/MII_schem.vhf -w C:/XilinxPrj/ethernet4/MII_schem.sch
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
   port ( CLK       : in    std_logic; 
          E_RX_CLK  : in    std_logic; 
          E_RX_D    : in    std_logic_vector (3 downto 0); 
          E_RX_DV   : in    std_logic; 
          E_RX_ERR  : in    std_logic; 
          RESET     : in    std_logic; 
          ROT_A     : in    std_logic; 
          ROT_B     : in    std_logic; 
          RS232_RxD : in    std_logic; 
          RS232_TxD : out   std_logic; 
          test      : out   std_logic_vector (7 downto 0));
end MII_schem;

architecture BEHAVIORAL of MII_schem is
   signal BUSY          : std_logic;
   signal DATA_RECEIVED : std_logic;
   signal RXRDY         : std_logic;
   signal TXBUSY        : std_logic;
   signal XLXN_21       : std_logic;
   signal XLXN_23       : std_logic_vector (3 downto 0);
   signal XLXN_24       : std_logic_vector (7 downto 0);
   signal XLXN_25       : std_logic;
   signal XLXN_26       : std_logic;
   signal XLXN_27       : std_logic;
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
   end component;
   
   component header_display
      port ( clk        : in    std_logic; 
             start      : in    std_logic; 
             reset      : in    std_logic; 
             ram_output : in    std_logic_vector (3 downto 0); 
             char_we    : out   std_logic; 
             ram_clk    : out   std_logic; 
             ram_enable : out   std_logic; 
             char       : out   std_logic_vector (7 downto 0));
   end component;
   
   component RS232
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             RS232_RxD : in    std_logic; 
             TxStart   : in    std_logic; 
             TxDI      : in    std_logic_vector (7 downto 0); 
             TxBusy    : out   std_logic; 
             RxRdy     : out   std_logic; 
             RS232_TxD : out   std_logic; 
             RxDO      : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component MII_RX
      port ( recv_strobe   : in    std_logic; 
             recv_clock    : in    std_logic; 
             recv_error    : in    std_logic; 
             clk           : in    std_logic; 
             reset         : in    std_logic; 
             ram_clk       : in    std_logic; 
             ram_enable    : in    std_logic; 
             recv_data     : in    std_logic_vector (3 downto 0); 
             data_received : out   std_logic; 
             busy          : out   std_logic; 
             ram_output    : out   std_logic_vector (3 downto 0); 
             test          : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_2 : RotaryEnc
      port map (Clk=>CLK,
                ROT_A=>ROT_A,
                ROT_B=>ROT_B,
                RotL=>open,
                RotR=>XLXN_21);
   
   XLXI_3 : header_display
      port map (clk=>CLK,
                ram_output(3 downto 0)=>XLXN_23(3 downto 0),
                reset=>RESET,
                start=>XLXN_21,
                char(7 downto 0)=>XLXN_24(7 downto 0),
                char_we=>XLXN_25,
                ram_clk=>XLXN_27,
                ram_enable=>XLXN_26);
   
   XLXI_4 : RS232
      port map (Clk_Sys=>CLK,
                Clk_50MHz=>CLK,
                Reset=>RESET,
                RS232_RxD=>RS232_RxD,
                TxDI(7 downto 0)=>XLXN_24(7 downto 0),
                TxStart=>XLXN_25,
                RS232_TxD=>RS232_TxD,
                RxDO=>open,
                RxRdy=>RXRDY,
                TxBusy=>TXBUSY);
   
   XLXI_5 : MII_RX
      port map (clk=>CLK,
                ram_clk=>XLXN_27,
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
   
end BEHAVIORAL;


