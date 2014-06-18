--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : test.vhf
-- /___/   /\     Timestamp : 03/10/2014 10:37:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/XilinxPrj/ethernet/test.vhf -w C:/XilinxPrj/ethernet/test.sch
--Design Name: test
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

entity test is
   port ( btn    : in    std_logic; 
          clk_in : in    std_logic; 
          ddane  : out   std_logic_vector (15 downto 0); 
          mdc    : out   std_logic; 
          mdio   : inout std_logic);
end test;

architecture BEHAVIORAL of test is
   attribute BOX_TYPE   : string ;
   signal busy   : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_4 : std_logic;
   signal XLXN_5 : std_logic_vector (15 downto 0);
   signal XLXN_6 : std_logic_vector (4 downto 0);
   signal XLXN_7 : std_logic_vector (4 downto 0);
   signal XLXN_9 : std_logic;
   component SMI_divider
      port ( clk_in  : in    std_logic; 
             clk_out : out   std_logic);
   end component;
   
   component SMI_RXTX
      port ( write_read : in    std_logic; 
             reset      : in    std_logic; 
             clk        : in    std_logic; 
             clk_div    : in    std_logic; 
             data_in    : in    std_logic_vector (15 downto 0); 
             phy_addr   : in    std_logic_vector (4 downto 0); 
             reg_addr   : in    std_logic_vector (4 downto 0); 
             MDIO       : inout std_logic; 
             busy       : out   std_logic; 
             MDC        : out   std_logic; 
             data_out   : out   std_logic_vector (15 downto 0); 
             strt       : in    std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component button
      port ( clk  : in    std_logic; 
             btn  : in    std_logic; 
             strt : out   std_logic);
   end component;
   
begin
   XLXN_5(15 downto 0) <= x"0000";
   XLXN_6(4 downto 0) <= b"00110";
   XLXN_7(4 downto 0) <= b"00000";
   XLXI_1 : SMI_divider
      port map (clk_in=>clk_in,
                clk_out=>XLXN_2);
   
   XLXI_2 : SMI_RXTX
      port map (clk=>clk_in,
                clk_div=>XLXN_2,
                data_in(15 downto 0)=>XLXN_5(15 downto 0),
                phy_addr(4 downto 0)=>XLXN_6(4 downto 0),
                reg_addr(4 downto 0)=>XLXN_7(4 downto 0),
                reset=>XLXN_4,
                strt=>XLXN_9,
                write_read=>XLXN_4,
                busy=>busy,
                data_out(15 downto 0)=>ddane(15 downto 0),
                MDC=>mdc,
                MDIO=>mdio);
   
   XLXI_3 : GND
      port map (G=>XLXN_4);
   
   XLXI_7 : button
      port map (btn=>btn,
                clk=>clk_in,
                strt=>XLXN_9);
   
end BEHAVIORAL;


