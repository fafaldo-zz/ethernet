--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : ethernetTX.vhf
-- /___/   /\     Timestamp : 08/24/2014 10:38:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/ethernetTX.vhf -w C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/ethernetTX.sch
--Design Name: ethernetTX
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

entity ethernetTX is
   port ( clk     : in    std_logic; 
          data_in : in    std_logic_vector (7 downto 0); 
          PUSH    : in    std_logic; 
          start   : in    std_logic; 
          TX_CLK  : in    std_logic; 
          busy    : out   std_logic; 
          empty   : out   std_logic; 
          full    : out   std_logic; 
          TX_D    : out   std_logic_vector (3 downto 0); 
          TX_EN   : out   std_logic);
end ethernetTX;

architecture BEHAVIORAL of ethernetTX is
   signal XLXN_1                 : std_logic_vector (11 downto 0);
   signal XLXN_2                 : std_logic_vector (10 downto 0);
   signal XLXN_3                 : std_logic_vector (7 downto 0);
   signal XLXN_4                 : std_logic_vector (3 downto 0);
   signal XLXN_5                 : std_logic;
   signal XLXN_6                 : std_logic;
   signal XLXN_7                 : std_logic;
   signal XLXN_8                 : std_logic;
   signal XLXN_9                 : std_logic;
   signal XLXI_1_DIA_openSignal  : std_logic_vector (3 downto 0);
   signal XLXI_1_DIPB_openSignal : std_logic_vector (0 downto 0);
   signal XLXI_1_SSRA_openSignal : std_logic;
   signal XLXI_1_SSRB_openSignal : std_logic;
   signal XLXI_1_WEA_openSignal  : std_logic;
   signal XLXI_2_EOF_openSignal  : std_logic;
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
   
begin
   XLXI_1 : new_tx_frame_buffer
      port map (ADDRA(11 downto 0)=>XLXN_1(11 downto 0),
                ADDRB(10 downto 0)=>XLXN_2(10 downto 0),
                CLKA=>XLXN_5,
                CLKB=>XLXN_6,
                DIA(3 downto 0)=>XLXI_1_DIA_openSignal(3 downto 0),
                DIB(7 downto 0)=>XLXN_3(7 downto 0),
                DIPB(0)=>XLXI_1_DIPB_openSignal(0),
                ENA=>XLXN_7,
                ENB=>XLXN_8,
                SSRA=>XLXI_1_SSRA_openSignal,
                SSRB=>XLXI_1_SSRB_openSignal,
                WEA=>XLXI_1_WEA_openSignal,
                WEB=>XLXN_9,
                DOA(3 downto 0)=>XLXN_4(3 downto 0),
                DOB=>open,
                DOPB=>open);
   
   XLXI_2 : new_tx_fifo_control_unit
      port map (clk=>clk,
                data_in(7 downto 0)=>data_in(7 downto 0),
                doA(3 downto 0)=>XLXN_4(3 downto 0),
                EOF=>XLXI_2_EOF_openSignal,
                PUSH=>PUSH,
                start=>start,
                Tx_Clk=>TX_CLK,
                addrA(11 downto 0)=>XLXN_1(11 downto 0),
                addrB(10 downto 0)=>XLXN_2(10 downto 0),
                busy=>busy,
                clkA=>XLXN_5,
                clkB=>XLXN_6,
                diB(7 downto 0)=>XLXN_3(7 downto 0),
                empty=>empty,
                enA=>XLXN_7,
                enB=>XLXN_8,
                full=>full,
                test=>open,
                Tx_D(3 downto 0)=>TX_D(3 downto 0),
                Tx_En=>TX_EN,
                weB=>XLXN_9);
   
end BEHAVIORAL;


