--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : CU_test1.vhf
-- /___/   /\     Timestamp : 08/30/2014 11:59:29
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/CU_test1.vhf -w C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/CU_test1.sch
--Design Name: CU_test1
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

entity ethernetRX_MUSER_CU_test1 is
   port ( clk      : in    std_logic; 
          POP      : in    std_logic; 
          RX_CLK   : in    std_logic; 
          RX_D     : in    std_logic_vector (3 downto 0); 
          RX_DV    : in    std_logic; 
          data_out : out   std_logic_vector (7 downto 0); 
          empty    : out   std_logic; 
          EOF      : out   std_logic; 
          full     : out   std_logic);
end ethernetRX_MUSER_CU_test1;

architecture BEHAVIORAL of ethernetRX_MUSER_CU_test1 is
   signal XLXN_4                 : std_logic;
   signal XLXN_5                 : std_logic;
   signal XLXN_6                 : std_logic_vector (11 downto 0);
   signal XLXN_7                 : std_logic_vector (10 downto 0);
   signal XLXN_8                 : std_logic_vector (3 downto 0);
   signal XLXN_9                 : std_logic;
   signal XLXN_10                : std_logic;
   signal XLXN_11                : std_logic;
   signal XLXN_12                : std_logic;
   signal XLXN_13                : std_logic;
   signal XLXN_14                : std_logic_vector (13 downto 0);
   signal XLXN_15                : std_logic_vector (12 downto 0);
   signal XLXN_16                : std_logic_vector (0 downto 0);
   signal XLXN_17                : std_logic_vector (1 downto 0);
   signal XLXN_27                : std_logic_vector (7 downto 0);
   signal XLXN_29                : std_logic;
   signal XLXI_2_DIB_openSignal  : std_logic_vector (7 downto 0);
   signal XLXI_2_DIPB_openSignal : std_logic_vector (0 downto 0);
   signal XLXI_2_SSRA_openSignal : std_logic;
   signal XLXI_2_SSRB_openSignal : std_logic;
   signal XLXI_2_WEB_openSignal  : std_logic;
   signal XLXI_3_DIB_openSignal  : std_logic_vector (1 downto 0);
   signal XLXI_3_SSRA_openSignal : std_logic;
   signal XLXI_3_SSRB_openSignal : std_logic;
   signal XLXI_3_WEB_openSignal  : std_logic;
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
             EOFenB   : out   std_logic; 
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
      port map (clk=>clk,
                doB(7 downto 0)=>XLXN_27(7 downto 0),
                doEOFB(1 downto 0)=>XLXN_17(1 downto 0),
                POP=>POP,
                Rx_Clk=>RX_CLK,
                Rx_D(3 downto 0)=>RX_D(3 downto 0),
                Rx_DV=>RX_DV,
                addrA(11 downto 0)=>XLXN_6(11 downto 0),
                addrB(10 downto 0)=>XLXN_7(10 downto 0),
                addrEOFA(13 downto 0)=>XLXN_14(13 downto 0),
                addrEOFB(12 downto 0)=>XLXN_15(12 downto 0),
                clkA=>XLXN_10,
                clkB=>XLXN_11,
                data_out(7 downto 0)=>data_out(7 downto 0),
                diA(3 downto 0)=>XLXN_8(3 downto 0),
                diEOFA(0)=>XLXN_16(0),
                empty=>empty,
                enA=>XLXN_4,
                enB=>XLXN_5,
                EOF=>EOF,
                EOFenA=>XLXN_12,
                EOFenB=>XLXN_29,
                EOFweA=>XLXN_13,
                full=>full,
                test=>open,
                weA=>XLXN_9);
   
   XLXI_2 : new_frame_buffer
      port map (ADDRA(11 downto 0)=>XLXN_6(11 downto 0),
                ADDRB(10 downto 0)=>XLXN_7(10 downto 0),
                CLKA=>XLXN_10,
                CLKB=>XLXN_11,
                DIA(3 downto 0)=>XLXN_8(3 downto 0),
                DIB(7 downto 0)=>XLXI_2_DIB_openSignal(7 downto 0),
                DIPB(0)=>XLXI_2_DIPB_openSignal(0),
                ENA=>XLXN_4,
                ENB=>XLXN_5,
                SSRA=>XLXI_2_SSRA_openSignal,
                SSRB=>XLXI_2_SSRB_openSignal,
                WEA=>XLXN_9,
                WEB=>XLXI_2_WEB_openSignal,
                DOA=>open,
                DOB(7 downto 0)=>XLXN_27(7 downto 0),
                DOPB=>open);
   
   XLXI_3 : new_eof_buffer
      port map (ADDRA(13 downto 0)=>XLXN_14(13 downto 0),
                ADDRB(12 downto 0)=>XLXN_15(12 downto 0),
                CLKA=>XLXN_10,
                CLKB=>XLXN_11,
                DIA(0)=>XLXN_16(0),
                DIB(1 downto 0)=>XLXI_3_DIB_openSignal(1 downto 0),
                ENA=>XLXN_12,
                ENB=>XLXN_29,
                SSRA=>XLXI_3_SSRA_openSignal,
                SSRB=>XLXI_3_SSRB_openSignal,
                WEA=>XLXN_13,
                WEB=>XLXI_3_WEB_openSignal,
                DOA=>open,
                DOB(1 downto 0)=>XLXN_17(1 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CU_test1 is
   port ( clk      : in    std_logic; 
          E_RX_CLK : in    std_logic; 
          E_RX_D   : in    std_logic_vector (3 downto 0); 
          E_RX_DV  : in    std_logic; 
          REST     : in    std_logic; 
          full     : out   std_logic; 
          test     : out   std_logic_vector (7 downto 0));
end CU_test1;

architecture BEHAVIORAL of CU_test1 is
   signal XLXN_9   : std_logic_vector (7 downto 0);
   signal XLXN_12  : std_logic;
   signal XLXN_13  : std_logic;
   signal XLXN_14  : std_logic;
   signal XLXN_15  : std_logic;
   signal XLXN_16  : std_logic;
   signal XLXN_17  : std_logic;
   component ethernetRX_MUSER_CU_test1
      port ( RX_D     : in    std_logic_vector (3 downto 0); 
             clk      : in    std_logic; 
             RX_CLK   : in    std_logic; 
             RX_DV    : in    std_logic; 
             POP      : in    std_logic; 
             empty    : out   std_logic; 
             full     : out   std_logic; 
             EOF      : out   std_logic; 
             data_out : out   std_logic_vector (7 downto 0));
   end component;
   
   component ICMP_detector
      port ( enable        : in    std_logic; 
             reset         : in    std_logic; 
             clk           : in    std_logic; 
             data_in       : in    std_logic_vector (7 downto 0); 
             ICMP_detected : out   std_logic; 
             test          : out   std_logic_vector (7 downto 0));
   end component;
   
   component CUnit
      port ( clk             : in    std_logic; 
             empty           : in    std_logic; 
             EOF             : in    std_logic; 
             ICMP_recognized : in    std_logic; 
             reset           : in    std_logic; 
             data_in         : in    std_logic_vector (7 downto 0); 
             frame_reset     : out   std_logic; 
             enable          : out   std_logic; 
             POP             : out   std_logic; 
             test            : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : ethernetRX_MUSER_CU_test1
      port map (clk=>clk,
                POP=>XLXN_16,
                RX_CLK=>E_RX_CLK,
                RX_D(3 downto 0)=>E_RX_D(3 downto 0),
                RX_DV=>E_RX_DV,
                data_out(7 downto 0)=>XLXN_9(7 downto 0),
                empty=>XLXN_15,
                EOF=>XLXN_14,
                full=>full);
   
   XLXI_3 : ICMP_detector
      port map (clk=>clk,
                data_in(7 downto 0)=>XLXN_9(7 downto 0),
                enable=>XLXN_12,
                reset=>XLXN_17,
                ICMP_detected=>XLXN_13,
                test=>open);
   
   XLXI_5 : CUnit
      port map (clk=>clk,
                data_in(7 downto 0)=>XLXN_9(7 downto 0),
                empty=>XLXN_15,
                EOF=>XLXN_14,
                ICMP_recognized=>XLXN_13,
                reset=>REST,
                enable=>XLXN_12,
                frame_reset=>XLXN_17,
                POP=>XLXN_16,
                test(7 downto 0)=>test(7 downto 0));
   
end BEHAVIORAL;


