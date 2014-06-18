--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: nowyRXTX_timesim.vhd
-- /___/   /\     Timestamp: Thu Mar 13 17:04:38 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf nowyRXTX.pcf -rpw 100 -tpw 0 -ar Structure -tm nowyRXTX -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim nowyRXTX.ncd nowyRXTX_timesim.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-06-08)
-- Input file	: nowyRXTX.ncd
-- Output file	: C:\Users\fafik\Dropbox\infa\xilinx\ethernet2\netgen\par\nowyRXTX_timesim.vhd
-- # of Entities	: 1
-- Design Name	: nowyRXTX
-- Xilinx	: D:\programy\Xilinx\14.6\ISE_DS\ISE\
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity nowyRXTX is
  port (
    MDIO : inout STD_LOGIC; 
    clk : in STD_LOGIC := 'X'; 
    MDC : out STD_LOGIC; 
    strt : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    busy : out STD_LOGIC; 
    write_read : in STD_LOGIC := 'X'; 
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    phy_addr : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    reg_addr : in STD_LOGIC_VECTOR ( 4 downto 0 ) 
  );
end nowyRXTX;

architecture Structure of nowyRXTX is
  signal write_send_data_not0001_0 : STD_LOGIC; 
  signal clk_div_1313 : STD_LOGIC; 
  signal reset_IBUF_1314 : STD_LOGIC; 
  signal read_receive_data_0_cmp_gt00001_1316 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal read_send_data_10_or0000_0 : STD_LOGIC; 
  signal read_send_data_11_not0001_inv : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal latched_write_read_1343 : STD_LOGIC; 
  signal Mtridata_MDIO_and0000135 : STD_LOGIC; 
  signal Mtridata_MDIO_1348 : STD_LOGIC; 
  signal read_send_data_10_and0000_0 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal read_send_data_0_cmp_lt0000 : STD_LOGIC; 
  signal read_send_data_0_not0001_0 : STD_LOGIC; 
  signal Mtrien_MDIO_1353 : STD_LOGIC; 
  signal read_receive_data_0_and0000_0 : STD_LOGIC; 
  signal reg_addr_1_IBUF_1360 : STD_LOGIC; 
  signal reg_addr_0_IBUF_1361 : STD_LOGIC; 
  signal strt_IBUF_1362 : STD_LOGIC; 
  signal reg_addr_3_IBUF_1365 : STD_LOGIC; 
  signal reg_addr_2_IBUF_1366 : STD_LOGIC; 
  signal reg_addr_4_IBUF_1369 : STD_LOGIC; 
  signal read_receive_data_0_cmp_gt000011_0 : STD_LOGIC; 
  signal read_send_data_0_cmp_lt0000112_0 : STD_LOGIC; 
  signal read_send_data_0_cmp_lt0000134_0 : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal Mtridata_MDIO_and000028 : STD_LOGIC; 
  signal N20_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal phy_addr_1_IBUF_1386 : STD_LOGIC; 
  signal phy_addr_0_IBUF_1387 : STD_LOGIC; 
  signal phy_addr_3_IBUF_1390 : STD_LOGIC; 
  signal phy_addr_2_IBUF_1391 : STD_LOGIC; 
  signal phy_addr_4_IBUF_1394 : STD_LOGIC; 
  signal clk_div1 : STD_LOGIC; 
  signal Mtridata_MDC_1397 : STD_LOGIC; 
  signal bit_counter_6_1_1403 : STD_LOGIC; 
  signal busy_in_cmp_eq0000_1409 : STD_LOGIC; 
  signal busy_in_1448 : STD_LOGIC; 
  signal counter_cmp_eq000010_0 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal counter_cmp_eq000023_1460 : STD_LOGIC; 
  signal Mcount_bit_counter_cy_1_Q : STD_LOGIC; 
  signal Mcount_bit_counter_cy_3_Q : STD_LOGIC; 
  signal counter_or0000 : STD_LOGIC; 
  signal Mcount_counter_cy_1_Q : STD_LOGIC; 
  signal Mcount_counter_cy_3_Q : STD_LOGIC; 
  signal write_send_data_and0000_0 : STD_LOGIC; 
  signal read_receive_data_0_and0000_SW2_O : STD_LOGIC; 
  signal write_send_data_59_DXMUX_1578 : STD_LOGIC; 
  signal write_send_data_mux0005 : STD_LOGIC; 
  signal write_send_data_59_DYMUX_1565 : STD_LOGIC; 
  signal write_send_data_mux0006 : STD_LOGIC; 
  signal write_send_data_59_SRINV_1557 : STD_LOGIC; 
  signal write_send_data_59_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_59_CEINV_1555 : STD_LOGIC; 
  signal read_send_data_10_or0000 : STD_LOGIC; 
  signal write_send_data_0_DYMUX_1607 : STD_LOGIC; 
  signal write_send_data_mux0062 : STD_LOGIC; 
  signal write_send_data_0_SRINV_1599 : STD_LOGIC; 
  signal write_send_data_0_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_0_CEINV_1597 : STD_LOGIC; 
  signal write_send_data_3_DXMUX_1656 : STD_LOGIC; 
  signal write_send_data_mux0059 : STD_LOGIC; 
  signal write_send_data_3_DYMUX_1642 : STD_LOGIC; 
  signal write_send_data_mux0060 : STD_LOGIC; 
  signal write_send_data_3_SRINV_1633 : STD_LOGIC; 
  signal write_send_data_3_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_3_CEINV_1631 : STD_LOGIC; 
  signal write_send_data_5_DXMUX_1698 : STD_LOGIC; 
  signal write_send_data_mux0057 : STD_LOGIC; 
  signal write_send_data_5_DYMUX_1684 : STD_LOGIC; 
  signal write_send_data_mux0058 : STD_LOGIC; 
  signal write_send_data_5_SRINV_1675 : STD_LOGIC; 
  signal write_send_data_5_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_5_CEINV_1673 : STD_LOGIC; 
  signal write_send_data_7_DXMUX_1740 : STD_LOGIC; 
  signal write_send_data_mux0055 : STD_LOGIC; 
  signal write_send_data_7_DYMUX_1726 : STD_LOGIC; 
  signal write_send_data_mux0056 : STD_LOGIC; 
  signal write_send_data_7_SRINV_1717 : STD_LOGIC; 
  signal write_send_data_7_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_7_CEINV_1715 : STD_LOGIC; 
  signal write_send_data_9_DXMUX_1782 : STD_LOGIC; 
  signal write_send_data_mux0053 : STD_LOGIC; 
  signal write_send_data_9_DYMUX_1768 : STD_LOGIC; 
  signal write_send_data_mux0054 : STD_LOGIC; 
  signal write_send_data_9_SRINV_1759 : STD_LOGIC; 
  signal write_send_data_9_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_9_CEINV_1757 : STD_LOGIC; 
  signal Mtridata_MDIO_and0000 : STD_LOGIC; 
  signal Mtridata_MDIO_DYMUX_1805 : STD_LOGIC; 
  signal Mtridata_MDIO_mux0000 : STD_LOGIC; 
  signal Mtridata_MDIO_CLKINV_1797 : STD_LOGIC; 
  signal read_send_data_0_not0001 : STD_LOGIC; 
  signal Mtrien_MDIO_DYMUX_1839 : STD_LOGIC; 
  signal Mtrien_MDIO_mux0000_norst_1836 : STD_LOGIC; 
  signal Mtrien_MDIO_SRINV_1831 : STD_LOGIC; 
  signal Mtrien_MDIO_CLKINV_1830 : STD_LOGIC; 
  signal read_receive_data_7_DXMUX_1869 : STD_LOGIC; 
  signal read_receive_data_7_DYMUX_1862 : STD_LOGIC; 
  signal read_receive_data_7_SRINV_1860 : STD_LOGIC; 
  signal read_receive_data_7_CLKINV_1859 : STD_LOGIC; 
  signal read_receive_data_7_CEINV_1858 : STD_LOGIC; 
  signal read_receive_data_9_DXMUX_1893 : STD_LOGIC; 
  signal read_receive_data_9_DYMUX_1886 : STD_LOGIC; 
  signal read_receive_data_9_SRINV_1884 : STD_LOGIC; 
  signal read_receive_data_9_CLKINV_1883 : STD_LOGIC; 
  signal read_receive_data_9_CEINV_1882 : STD_LOGIC; 
  signal latched_reg_addr_1_DXMUX_1914 : STD_LOGIC; 
  signal latched_reg_addr_1_DYMUX_1908 : STD_LOGIC; 
  signal latched_reg_addr_1_CLKINV_1906 : STD_LOGIC; 
  signal latched_reg_addr_1_CEINV_1905 : STD_LOGIC; 
  signal latched_reg_addr_3_DXMUX_1934 : STD_LOGIC; 
  signal latched_reg_addr_3_DYMUX_1928 : STD_LOGIC; 
  signal latched_reg_addr_3_CLKINV_1926 : STD_LOGIC; 
  signal latched_reg_addr_3_CEINV_1925 : STD_LOGIC; 
  signal latched_reg_addr_4_DYMUX_1946 : STD_LOGIC; 
  signal latched_reg_addr_4_CLKINV_1944 : STD_LOGIC; 
  signal latched_reg_addr_4_CEINV_1943 : STD_LOGIC; 
  signal read_receive_data_0_cmp_gt000011 : STD_LOGIC; 
  signal read_send_data_0_cmp_lt0000112_1965 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal read_send_data_0_cmp_lt0000134_1989 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal latched_phy_addr_1_DXMUX_2062 : STD_LOGIC; 
  signal latched_phy_addr_1_DYMUX_2056 : STD_LOGIC; 
  signal latched_phy_addr_1_CLKINV_2054 : STD_LOGIC; 
  signal latched_phy_addr_1_CEINV_2053 : STD_LOGIC; 
  signal latched_phy_addr_3_DXMUX_2082 : STD_LOGIC; 
  signal latched_phy_addr_3_DYMUX_2076 : STD_LOGIC; 
  signal latched_phy_addr_3_CLKINV_2074 : STD_LOGIC; 
  signal latched_phy_addr_3_CEINV_2073 : STD_LOGIC; 
  signal latched_phy_addr_4_DYMUX_2094 : STD_LOGIC; 
  signal latched_phy_addr_4_CLKINV_2092 : STD_LOGIC; 
  signal latched_phy_addr_4_CEINV_2091 : STD_LOGIC; 
  signal Mtridata_MDC_DYMUX_2104 : STD_LOGIC; 
  signal Mtridata_MDC_CLKINV_2102 : STD_LOGIC; 
  signal read_receive_data_11_DXMUX_2126 : STD_LOGIC; 
  signal read_receive_data_11_DYMUX_2119 : STD_LOGIC; 
  signal read_receive_data_11_SRINV_2117 : STD_LOGIC; 
  signal read_receive_data_11_CLKINV_2116 : STD_LOGIC; 
  signal read_receive_data_11_CEINV_2115 : STD_LOGIC; 
  signal read_receive_data_13_DXMUX_2150 : STD_LOGIC; 
  signal read_receive_data_13_DYMUX_2143 : STD_LOGIC; 
  signal read_receive_data_13_SRINV_2141 : STD_LOGIC; 
  signal read_receive_data_13_CLKINV_2140 : STD_LOGIC; 
  signal read_receive_data_13_CEINV_2139 : STD_LOGIC; 
  signal bit_counter_6_1_DYMUX_2163 : STD_LOGIC; 
  signal bit_counter_6_1_CLKINVNOT : STD_LOGIC; 
  signal read_receive_data_15_DXMUX_2188 : STD_LOGIC; 
  signal read_receive_data_15_DYMUX_2181 : STD_LOGIC; 
  signal read_receive_data_15_SRINV_2179 : STD_LOGIC; 
  signal read_receive_data_15_CLKINV_2178 : STD_LOGIC; 
  signal read_receive_data_15_CEINV_2177 : STD_LOGIC; 
  signal write_send_data_1_DXMUX_2224 : STD_LOGIC; 
  signal write_send_data_mux0061 : STD_LOGIC; 
  signal read_send_data_11_not0001_inv_pack_1 : STD_LOGIC; 
  signal write_send_data_1_SRINV_2207 : STD_LOGIC; 
  signal write_send_data_1_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_1_CEINV_2205 : STD_LOGIC; 
  signal clk_div1_DYMUX_2239 : STD_LOGIC; 
  signal clk_div1_SRINV_2237 : STD_LOGIC; 
  signal clk_div1_CLKINV_2236 : STD_LOGIC; 
  signal clk_div1_CEINV_2235 : STD_LOGIC; 
  signal clk_div_or0000 : STD_LOGIC; 
  signal busy_in_cmp_eq0000_pack_1 : STD_LOGIC; 
  signal read_send_data_10_DYMUX_2278 : STD_LOGIC; 
  signal read_send_data_10_SRINV_2276 : STD_LOGIC; 
  signal read_send_data_10_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_10_CEINV_2274 : STD_LOGIC; 
  signal read_send_data_11_DXMUX_2296 : STD_LOGIC; 
  signal read_send_data_11_REVUSED_2294 : STD_LOGIC; 
  signal read_send_data_11_SRINV_2292 : STD_LOGIC; 
  signal read_send_data_11_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_11_CEINV_2290 : STD_LOGIC; 
  signal read_send_data_21_DXMUX_2334 : STD_LOGIC; 
  signal read_send_data_21_REVUSED_2326 : STD_LOGIC; 
  signal read_send_data_21_DYMUX_2325 : STD_LOGIC; 
  signal read_send_data_19_rt_2322 : STD_LOGIC; 
  signal read_send_data_21_SRINV_2313 : STD_LOGIC; 
  signal read_send_data_21_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_21_CEINV_2311 : STD_LOGIC; 
  signal read_send_data_12_DXMUX_2353 : STD_LOGIC; 
  signal read_send_data_12_REVUSED_2351 : STD_LOGIC; 
  signal read_send_data_12_SRINV_2349 : STD_LOGIC; 
  signal read_send_data_12_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_12_CEINV_2347 : STD_LOGIC; 
  signal read_send_data_13_DYMUX_2369 : STD_LOGIC; 
  signal read_send_data_13_SRINV_2367 : STD_LOGIC; 
  signal read_send_data_13_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_13_CEINV_2365 : STD_LOGIC; 
  signal read_send_data_31_DXMUX_2406 : STD_LOGIC; 
  signal read_send_data_31_REVUSED_2398 : STD_LOGIC; 
  signal read_send_data_31_DYMUX_2397 : STD_LOGIC; 
  signal read_send_data_29_rt_2394 : STD_LOGIC; 
  signal read_send_data_31_SRINV_2385 : STD_LOGIC; 
  signal read_send_data_31_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_31_CEINV_2383 : STD_LOGIC; 
  signal read_send_data_23_DXMUX_2444 : STD_LOGIC; 
  signal read_send_data_23_REVUSED_2436 : STD_LOGIC; 
  signal read_send_data_23_DYMUX_2435 : STD_LOGIC; 
  signal read_send_data_21_rt_2432 : STD_LOGIC; 
  signal read_send_data_23_SRINV_2423 : STD_LOGIC; 
  signal read_send_data_23_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_23_CEINV_2421 : STD_LOGIC; 
  signal read_send_data_15_DXMUX_2482 : STD_LOGIC; 
  signal read_send_data_15_REVUSED_2474 : STD_LOGIC; 
  signal read_send_data_15_DYMUX_2473 : STD_LOGIC; 
  signal read_send_data_13_rt_2470 : STD_LOGIC; 
  signal read_send_data_15_SRINV_2461 : STD_LOGIC; 
  signal read_send_data_15_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_15_CEINV_2459 : STD_LOGIC; 
  signal latched_write_read_DYMUX_2496 : STD_LOGIC; 
  signal latched_write_read_CLKINV_2494 : STD_LOGIC; 
  signal latched_write_read_CEINV_2493 : STD_LOGIC; 
  signal read_send_data_41_DXMUX_2532 : STD_LOGIC; 
  signal read_send_data_41_REVUSED_2524 : STD_LOGIC; 
  signal read_send_data_41_DYMUX_2523 : STD_LOGIC; 
  signal read_send_data_39_rt_2520 : STD_LOGIC; 
  signal read_send_data_41_SRINV_2511 : STD_LOGIC; 
  signal read_send_data_41_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_41_CEINV_2509 : STD_LOGIC; 
  signal read_send_data_33_DXMUX_2570 : STD_LOGIC; 
  signal read_send_data_33_REVUSED_2562 : STD_LOGIC; 
  signal read_send_data_33_DYMUX_2561 : STD_LOGIC; 
  signal read_send_data_31_rt_2558 : STD_LOGIC; 
  signal read_send_data_33_SRINV_2549 : STD_LOGIC; 
  signal read_send_data_33_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_33_CEINV_2547 : STD_LOGIC; 
  signal read_send_data_25_DXMUX_2608 : STD_LOGIC; 
  signal read_send_data_25_REVUSED_2600 : STD_LOGIC; 
  signal read_send_data_25_DYMUX_2599 : STD_LOGIC; 
  signal read_send_data_23_rt_2596 : STD_LOGIC; 
  signal read_send_data_25_SRINV_2587 : STD_LOGIC; 
  signal read_send_data_25_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_25_CEINV_2585 : STD_LOGIC; 
  signal read_send_data_17_DXMUX_2646 : STD_LOGIC; 
  signal read_send_data_17_REVUSED_2638 : STD_LOGIC; 
  signal read_send_data_17_DYMUX_2637 : STD_LOGIC; 
  signal read_send_data_15_rt_2634 : STD_LOGIC; 
  signal read_send_data_17_SRINV_2625 : STD_LOGIC; 
  signal read_send_data_17_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_17_CEINV_2623 : STD_LOGIC; 
  signal read_send_data_43_DXMUX_2684 : STD_LOGIC; 
  signal read_send_data_43_REVUSED_2676 : STD_LOGIC; 
  signal read_send_data_43_DYMUX_2675 : STD_LOGIC; 
  signal read_send_data_41_rt_2672 : STD_LOGIC; 
  signal read_send_data_43_SRINV_2663 : STD_LOGIC; 
  signal read_send_data_43_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_43_CEINV_2661 : STD_LOGIC; 
  signal read_send_data_35_DXMUX_2722 : STD_LOGIC; 
  signal read_send_data_35_REVUSED_2714 : STD_LOGIC; 
  signal read_send_data_35_DYMUX_2713 : STD_LOGIC; 
  signal read_send_data_33_rt_2710 : STD_LOGIC; 
  signal read_send_data_35_SRINV_2701 : STD_LOGIC; 
  signal read_send_data_35_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_35_CEINV_2699 : STD_LOGIC; 
  signal read_send_data_27_DXMUX_2760 : STD_LOGIC; 
  signal read_send_data_27_REVUSED_2752 : STD_LOGIC; 
  signal read_send_data_27_DYMUX_2751 : STD_LOGIC; 
  signal read_send_data_25_rt_2748 : STD_LOGIC; 
  signal read_send_data_27_SRINV_2739 : STD_LOGIC; 
  signal read_send_data_27_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_27_CEINV_2737 : STD_LOGIC; 
  signal read_send_data_19_DXMUX_2798 : STD_LOGIC; 
  signal read_send_data_19_REVUSED_2790 : STD_LOGIC; 
  signal read_send_data_19_DYMUX_2789 : STD_LOGIC; 
  signal read_send_data_17_rt_2786 : STD_LOGIC; 
  signal read_send_data_19_SRINV_2777 : STD_LOGIC; 
  signal read_send_data_19_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_19_CEINV_2775 : STD_LOGIC; 
  signal read_send_data_45_DXMUX_2836 : STD_LOGIC; 
  signal read_send_data_45_REVUSED_2828 : STD_LOGIC; 
  signal read_send_data_45_DYMUX_2827 : STD_LOGIC; 
  signal read_send_data_43_rt_2824 : STD_LOGIC; 
  signal read_send_data_45_SRINV_2815 : STD_LOGIC; 
  signal read_send_data_45_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_45_CEINV_2813 : STD_LOGIC; 
  signal read_send_data_37_DXMUX_2874 : STD_LOGIC; 
  signal read_send_data_37_REVUSED_2866 : STD_LOGIC; 
  signal read_send_data_37_DYMUX_2865 : STD_LOGIC; 
  signal read_send_data_35_rt_2862 : STD_LOGIC; 
  signal read_send_data_37_SRINV_2853 : STD_LOGIC; 
  signal read_send_data_37_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_37_CEINV_2851 : STD_LOGIC; 
  signal read_send_data_29_DXMUX_2912 : STD_LOGIC; 
  signal read_send_data_29_REVUSED_2904 : STD_LOGIC; 
  signal read_send_data_29_DYMUX_2903 : STD_LOGIC; 
  signal read_send_data_27_rt_2900 : STD_LOGIC; 
  signal read_send_data_29_SRINV_2891 : STD_LOGIC; 
  signal read_send_data_29_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_29_CEINV_2889 : STD_LOGIC; 
  signal read_send_data_39_DXMUX_2950 : STD_LOGIC; 
  signal read_send_data_39_REVUSED_2942 : STD_LOGIC; 
  signal read_send_data_39_DYMUX_2941 : STD_LOGIC; 
  signal read_send_data_37_rt_2938 : STD_LOGIC; 
  signal read_send_data_39_SRINV_2929 : STD_LOGIC; 
  signal read_send_data_39_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_39_CEINV_2927 : STD_LOGIC; 
  signal busy_in_DXMUX_2969 : STD_LOGIC; 
  signal busy_in_BXINV_2968 : STD_LOGIC; 
  signal busy_in_REVUSED_2967 : STD_LOGIC; 
  signal busy_in_SRINV_2965 : STD_LOGIC; 
  signal busy_in_CLKINV_2964 : STD_LOGIC; 
  signal busy_in_CEINV_2963 : STD_LOGIC; 
  signal counter_cmp_eq000010_2985 : STD_LOGIC; 
  signal read_receive_data_1_DXMUX_3006 : STD_LOGIC; 
  signal read_receive_data_1_DYMUX_2999 : STD_LOGIC; 
  signal read_receive_data_1_SRINV_2997 : STD_LOGIC; 
  signal read_receive_data_1_CLKINV_2996 : STD_LOGIC; 
  signal read_receive_data_1_CEINV_2995 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal read_receive_data_3_DXMUX_3042 : STD_LOGIC; 
  signal read_receive_data_3_DYMUX_3035 : STD_LOGIC; 
  signal read_receive_data_3_SRINV_3033 : STD_LOGIC; 
  signal read_receive_data_3_CLKINV_3032 : STD_LOGIC; 
  signal read_receive_data_3_CEINV_3031 : STD_LOGIC; 
  signal clk_div_not0002 : STD_LOGIC; 
  signal counter_cmp_eq000023_pack_1 : STD_LOGIC; 
  signal read_receive_data_5_DXMUX_3090 : STD_LOGIC; 
  signal read_receive_data_5_DYMUX_3083 : STD_LOGIC; 
  signal read_receive_data_5_SRINV_3081 : STD_LOGIC; 
  signal read_receive_data_5_CLKINV_3080 : STD_LOGIC; 
  signal read_receive_data_5_CEINV_3079 : STD_LOGIC; 
  signal bit_counter_0_DXMUX_3143 : STD_LOGIC; 
  signal bit_counter_0_XORF_3141 : STD_LOGIC; 
  signal bit_counter_0_LOGIC_ONE_3140 : STD_LOGIC; 
  signal bit_counter_0_CYINIT_3139 : STD_LOGIC; 
  signal bit_counter_0_CYSELF_3130 : STD_LOGIC; 
  signal bit_counter_0_BXINV_3128 : STD_LOGIC; 
  signal bit_counter_0_DYMUX_3121 : STD_LOGIC; 
  signal bit_counter_0_XORG_3119 : STD_LOGIC; 
  signal bit_counter_0_CYMUXG_3118 : STD_LOGIC; 
  signal Mcount_bit_counter_cy_0_Q : STD_LOGIC; 
  signal bit_counter_0_LOGIC_ZERO_3116 : STD_LOGIC; 
  signal bit_counter_0_CYSELG_3107 : STD_LOGIC; 
  signal bit_counter_0_G : STD_LOGIC; 
  signal bit_counter_0_SRINV_3105 : STD_LOGIC; 
  signal bit_counter_0_CLKINVNOT : STD_LOGIC; 
  signal bit_counter_2_DXMUX_3199 : STD_LOGIC; 
  signal bit_counter_2_XORF_3197 : STD_LOGIC; 
  signal bit_counter_2_CYINIT_3196 : STD_LOGIC; 
  signal bit_counter_2_F : STD_LOGIC; 
  signal bit_counter_2_DYMUX_3180 : STD_LOGIC; 
  signal bit_counter_2_XORG_3178 : STD_LOGIC; 
  signal Mcount_bit_counter_cy_2_Q : STD_LOGIC; 
  signal bit_counter_2_CYSELF_3176 : STD_LOGIC; 
  signal bit_counter_2_CYMUXFAST_3175 : STD_LOGIC; 
  signal bit_counter_2_CYAND_3174 : STD_LOGIC; 
  signal bit_counter_2_FASTCARRY_3173 : STD_LOGIC; 
  signal bit_counter_2_CYMUXG2_3172 : STD_LOGIC; 
  signal bit_counter_2_CYMUXF2_3171 : STD_LOGIC; 
  signal bit_counter_2_LOGIC_ZERO_3170 : STD_LOGIC; 
  signal bit_counter_2_CYSELG_3161 : STD_LOGIC; 
  signal bit_counter_2_G : STD_LOGIC; 
  signal bit_counter_2_SRINV_3159 : STD_LOGIC; 
  signal bit_counter_2_CLKINVNOT : STD_LOGIC; 
  signal bit_counter_4_DXMUX_3255 : STD_LOGIC; 
  signal bit_counter_4_XORF_3253 : STD_LOGIC; 
  signal bit_counter_4_CYINIT_3252 : STD_LOGIC; 
  signal bit_counter_4_F : STD_LOGIC; 
  signal bit_counter_4_DYMUX_3236 : STD_LOGIC; 
  signal bit_counter_4_XORG_3234 : STD_LOGIC; 
  signal Mcount_bit_counter_cy_4_Q : STD_LOGIC; 
  signal bit_counter_4_CYSELF_3232 : STD_LOGIC; 
  signal bit_counter_4_CYMUXFAST_3231 : STD_LOGIC; 
  signal bit_counter_4_CYAND_3230 : STD_LOGIC; 
  signal bit_counter_4_FASTCARRY_3229 : STD_LOGIC; 
  signal bit_counter_4_CYMUXG2_3228 : STD_LOGIC; 
  signal bit_counter_4_CYMUXF2_3227 : STD_LOGIC; 
  signal bit_counter_4_LOGIC_ZERO_3226 : STD_LOGIC; 
  signal bit_counter_4_CYSELG_3217 : STD_LOGIC; 
  signal bit_counter_4_G : STD_LOGIC; 
  signal bit_counter_4_SRINV_3215 : STD_LOGIC; 
  signal bit_counter_4_CLKINVNOT : STD_LOGIC; 
  signal bit_counter_6_DXMUX_3305 : STD_LOGIC; 
  signal bit_counter_6_FXMUX_3304 : STD_LOGIC; 
  signal bit_counter_6_XORF_3303 : STD_LOGIC; 
  signal bit_counter_6_LOGIC_ZERO_3302 : STD_LOGIC; 
  signal bit_counter_6_CYINIT_3301 : STD_LOGIC; 
  signal bit_counter_6_CYSELF_3292 : STD_LOGIC; 
  signal bit_counter_6_F : STD_LOGIC; 
  signal bit_counter_6_DYMUX_3284 : STD_LOGIC; 
  signal bit_counter_6_XORG_3282 : STD_LOGIC; 
  signal Mcount_bit_counter_cy_6_Q : STD_LOGIC; 
  signal bit_counter_7_rt_3279 : STD_LOGIC; 
  signal bit_counter_6_SRINV_3271 : STD_LOGIC; 
  signal bit_counter_6_CLKINVNOT : STD_LOGIC; 
  signal counter_0_DXMUX_3360 : STD_LOGIC; 
  signal counter_0_XORF_3358 : STD_LOGIC; 
  signal counter_0_LOGIC_ONE_3357 : STD_LOGIC; 
  signal counter_0_CYINIT_3356 : STD_LOGIC; 
  signal counter_0_CYSELF_3347 : STD_LOGIC; 
  signal counter_0_BXINV_3345 : STD_LOGIC; 
  signal counter_0_DYMUX_3339 : STD_LOGIC; 
  signal counter_0_XORG_3337 : STD_LOGIC; 
  signal counter_0_CYMUXG_3336 : STD_LOGIC; 
  signal Mcount_counter_cy_0_Q : STD_LOGIC; 
  signal counter_0_LOGIC_ZERO_3334 : STD_LOGIC; 
  signal counter_0_CYSELG_3325 : STD_LOGIC; 
  signal counter_0_G : STD_LOGIC; 
  signal counter_0_SRINV_3323 : STD_LOGIC; 
  signal counter_0_CLKINV_3322 : STD_LOGIC; 
  signal counter_0_CEINV_3321 : STD_LOGIC; 
  signal counter_2_DXMUX_3416 : STD_LOGIC; 
  signal counter_2_XORF_3414 : STD_LOGIC; 
  signal counter_2_CYINIT_3413 : STD_LOGIC; 
  signal counter_2_F : STD_LOGIC; 
  signal counter_2_DYMUX_3398 : STD_LOGIC; 
  signal counter_2_XORG_3396 : STD_LOGIC; 
  signal Mcount_counter_cy_2_Q : STD_LOGIC; 
  signal counter_2_CYSELF_3394 : STD_LOGIC; 
  signal counter_2_CYMUXFAST_3393 : STD_LOGIC; 
  signal counter_2_CYAND_3392 : STD_LOGIC; 
  signal counter_2_FASTCARRY_3391 : STD_LOGIC; 
  signal counter_2_CYMUXG2_3390 : STD_LOGIC; 
  signal counter_2_CYMUXF2_3389 : STD_LOGIC; 
  signal counter_2_LOGIC_ZERO_3388 : STD_LOGIC; 
  signal counter_2_CYSELG_3379 : STD_LOGIC; 
  signal counter_2_G : STD_LOGIC; 
  signal counter_2_SRINV_3377 : STD_LOGIC; 
  signal counter_2_CLKINV_3376 : STD_LOGIC; 
  signal counter_2_CEINV_3375 : STD_LOGIC; 
  signal counter_4_DXMUX_3472 : STD_LOGIC; 
  signal counter_4_XORF_3470 : STD_LOGIC; 
  signal counter_4_CYINIT_3469 : STD_LOGIC; 
  signal counter_4_F : STD_LOGIC; 
  signal counter_4_DYMUX_3454 : STD_LOGIC; 
  signal counter_4_XORG_3452 : STD_LOGIC; 
  signal Mcount_counter_cy_4_Q : STD_LOGIC; 
  signal counter_4_CYSELF_3450 : STD_LOGIC; 
  signal counter_4_CYMUXFAST_3449 : STD_LOGIC; 
  signal counter_4_CYAND_3448 : STD_LOGIC; 
  signal counter_4_FASTCARRY_3447 : STD_LOGIC; 
  signal counter_4_CYMUXG2_3446 : STD_LOGIC; 
  signal counter_4_CYMUXF2_3445 : STD_LOGIC; 
  signal counter_4_LOGIC_ZERO_3444 : STD_LOGIC; 
  signal counter_4_CYSELG_3435 : STD_LOGIC; 
  signal counter_4_G : STD_LOGIC; 
  signal counter_4_SRINV_3433 : STD_LOGIC; 
  signal counter_4_CLKINV_3432 : STD_LOGIC; 
  signal counter_4_CEINV_3431 : STD_LOGIC; 
  signal counter_6_DXMUX_3521 : STD_LOGIC; 
  signal counter_6_XORF_3519 : STD_LOGIC; 
  signal counter_6_LOGIC_ZERO_3518 : STD_LOGIC; 
  signal counter_6_CYINIT_3517 : STD_LOGIC; 
  signal counter_6_CYSELF_3508 : STD_LOGIC; 
  signal counter_6_F : STD_LOGIC; 
  signal counter_6_DYMUX_3501 : STD_LOGIC; 
  signal counter_6_XORG_3499 : STD_LOGIC; 
  signal Mcount_counter_cy_6_Q : STD_LOGIC; 
  signal counter_7_rt_3496 : STD_LOGIC; 
  signal counter_6_SRINV_3488 : STD_LOGIC; 
  signal counter_6_CLKINV_3487 : STD_LOGIC; 
  signal counter_6_CEINV_3486 : STD_LOGIC; 
  signal MDIO_O : STD_LOGIC; 
  signal MDIO_T : STD_LOGIC; 
  signal MDIO_INBUF : STD_LOGIC; 
  signal MDC_O : STD_LOGIC; 
  signal MDC_T : STD_LOGIC; 
  signal strt_INBUF : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal reg_addr_0_INBUF : STD_LOGIC; 
  signal reg_addr_1_INBUF : STD_LOGIC; 
  signal reg_addr_2_INBUF : STD_LOGIC; 
  signal reg_addr_3_INBUF : STD_LOGIC; 
  signal reg_addr_4_INBUF : STD_LOGIC; 
  signal data_out_10_O : STD_LOGIC; 
  signal data_out_11_O : STD_LOGIC; 
  signal data_out_12_O : STD_LOGIC; 
  signal data_out_13_O : STD_LOGIC; 
  signal data_out_0_O : STD_LOGIC; 
  signal data_out_1_O : STD_LOGIC; 
  signal data_out_14_O : STD_LOGIC; 
  signal data_out_2_O : STD_LOGIC; 
  signal data_out_15_O : STD_LOGIC; 
  signal data_out_3_O : STD_LOGIC; 
  signal data_out_4_O : STD_LOGIC; 
  signal data_in_0_INBUF : STD_LOGIC; 
  signal data_out_5_O : STD_LOGIC; 
  signal data_in_1_INBUF : STD_LOGIC; 
  signal data_out_6_O : STD_LOGIC; 
  signal data_in_10_INBUF : STD_LOGIC; 
  signal data_in_2_INBUF : STD_LOGIC; 
  signal data_in_2_IFF_ICLK1INV_3797 : STD_LOGIC; 
  signal data_in_2_IFF_ICEINV_3795 : STD_LOGIC; 
  signal data_in_2_IFF_IDDRIN_MUX_3793 : STD_LOGIC; 
  signal data_out_7_O : STD_LOGIC; 
  signal data_in_11_INBUF : STD_LOGIC; 
  signal data_in_11_IFF_ICLK1INV_3825 : STD_LOGIC; 
  signal data_in_11_IFF_ICEINV_3823 : STD_LOGIC; 
  signal data_in_11_IFF_IDDRIN_MUX_3821 : STD_LOGIC; 
  signal data_in_3_INBUF : STD_LOGIC; 
  signal data_in_3_IFF_ICLK1INV_3845 : STD_LOGIC; 
  signal data_in_3_IFF_ICEINV_3843 : STD_LOGIC; 
  signal data_in_3_IFF_IDDRIN_MUX_3841 : STD_LOGIC; 
  signal data_out_8_O : STD_LOGIC; 
  signal data_in_12_INBUF : STD_LOGIC; 
  signal data_in_12_IFF_ICLK1INV_3873 : STD_LOGIC; 
  signal data_in_12_IFF_ICEINV_3871 : STD_LOGIC; 
  signal data_in_12_IFF_IDDRIN_MUX_3869 : STD_LOGIC; 
  signal data_in_4_INBUF : STD_LOGIC; 
  signal data_in_4_IFF_ICLK1INV_3893 : STD_LOGIC; 
  signal data_in_4_IFF_ICEINV_3891 : STD_LOGIC; 
  signal data_in_4_IFF_IDDRIN_MUX_3889 : STD_LOGIC; 
  signal data_out_9_O : STD_LOGIC; 
  signal data_in_13_INBUF : STD_LOGIC; 
  signal data_in_13_IFF_ICLK1INV_3921 : STD_LOGIC; 
  signal data_in_13_IFF_ICEINV_3919 : STD_LOGIC; 
  signal data_in_13_IFF_IDDRIN_MUX_3917 : STD_LOGIC; 
  signal data_in_5_INBUF : STD_LOGIC; 
  signal data_in_5_IFF_ICLK1INV_3941 : STD_LOGIC; 
  signal data_in_5_IFF_ICEINV_3939 : STD_LOGIC; 
  signal data_in_5_IFF_IDDRIN_MUX_3937 : STD_LOGIC; 
  signal write_read_INBUF : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal data_in_14_INBUF : STD_LOGIC; 
  signal data_in_6_INBUF : STD_LOGIC; 
  signal data_in_6_IFF_ICLK1INV_3993 : STD_LOGIC; 
  signal data_in_6_IFF_ICEINV_3991 : STD_LOGIC; 
  signal data_in_6_IFF_IDDRIN_MUX_3989 : STD_LOGIC; 
  signal phy_addr_0_INBUF : STD_LOGIC; 
  signal data_in_15_INBUF : STD_LOGIC; 
  signal data_in_7_INBUF : STD_LOGIC; 
  signal phy_addr_1_INBUF : STD_LOGIC; 
  signal data_in_8_INBUF : STD_LOGIC; 
  signal phy_addr_2_INBUF : STD_LOGIC; 
  signal data_in_9_INBUF : STD_LOGIC; 
  signal phy_addr_3_INBUF : STD_LOGIC; 
  signal phy_addr_4_INBUF : STD_LOGIC; 
  signal busy_O : STD_LOGIC; 
  signal clk_div_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_div_BUFG_I0_INV : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal counter_or0000_F5MUX_4178 : STD_LOGIC; 
  signal counter_or0000_F : STD_LOGIC; 
  signal counter_or0000_BXINV_4167 : STD_LOGIC; 
  signal counter_or00001 : STD_LOGIC; 
  signal Mtridata_MDIO_and0000135_F5MUX_4203 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal Mtridata_MDIO_and0000135_BXINV_4195 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal Mtridata_MDIO_and000028_F5MUX_4228 : STD_LOGIC; 
  signal Mtridata_MDIO_and0000281_4226 : STD_LOGIC; 
  signal Mtridata_MDIO_and000028_BXINV_4221 : STD_LOGIC; 
  signal Mtridata_MDIO_and0000282_4219 : STD_LOGIC; 
  signal read_send_data_10_and0000_4251 : STD_LOGIC; 
  signal read_send_data_0_cmp_lt0000_pack_1 : STD_LOGIC; 
  signal read_receive_data_0_and0000_4275 : STD_LOGIC; 
  signal read_receive_data_0_and0000_SW2_O_pack_1 : STD_LOGIC; 
  signal write_send_data_and0000_4299 : STD_LOGIC; 
  signal read_receive_data_0_cmp_gt00001_pack_1 : STD_LOGIC; 
  signal write_send_data_not0001 : STD_LOGIC; 
  signal N3_pack_1 : STD_LOGIC; 
  signal write_send_data_11_DXMUX_4362 : STD_LOGIC; 
  signal write_send_data_mux0051 : STD_LOGIC; 
  signal write_send_data_11_DYMUX_4348 : STD_LOGIC; 
  signal write_send_data_mux0052 : STD_LOGIC; 
  signal write_send_data_11_SRINV_4339 : STD_LOGIC; 
  signal write_send_data_11_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_11_CEINV_4337 : STD_LOGIC; 
  signal write_send_data_21_DXMUX_4404 : STD_LOGIC; 
  signal write_send_data_mux0043 : STD_LOGIC; 
  signal write_send_data_21_DYMUX_4390 : STD_LOGIC; 
  signal write_send_data_mux0044 : STD_LOGIC; 
  signal write_send_data_21_SRINV_4381 : STD_LOGIC; 
  signal write_send_data_21_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_21_CEINV_4379 : STD_LOGIC; 
  signal write_send_data_13_DXMUX_4446 : STD_LOGIC; 
  signal write_send_data_mux0049 : STD_LOGIC; 
  signal write_send_data_13_DYMUX_4432 : STD_LOGIC; 
  signal write_send_data_mux0050 : STD_LOGIC; 
  signal write_send_data_13_SRINV_4423 : STD_LOGIC; 
  signal write_send_data_13_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_13_CEINV_4421 : STD_LOGIC; 
  signal read_send_data_1_DXMUX_4488 : STD_LOGIC; 
  signal read_send_data_1_mux0000 : STD_LOGIC; 
  signal read_send_data_1_DYMUX_4474 : STD_LOGIC; 
  signal read_send_data_0_mux0000 : STD_LOGIC; 
  signal read_send_data_1_SRINV_4466 : STD_LOGIC; 
  signal read_send_data_1_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_1_CEINV_4464 : STD_LOGIC; 
  signal write_send_data_31_DXMUX_4530 : STD_LOGIC; 
  signal write_send_data_mux0033 : STD_LOGIC; 
  signal write_send_data_31_DYMUX_4517 : STD_LOGIC; 
  signal write_send_data_mux0034 : STD_LOGIC; 
  signal write_send_data_31_SRINV_4509 : STD_LOGIC; 
  signal write_send_data_31_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_31_CEINV_4507 : STD_LOGIC; 
  signal write_send_data_23_DXMUX_4572 : STD_LOGIC; 
  signal write_send_data_mux0041 : STD_LOGIC; 
  signal write_send_data_23_DYMUX_4558 : STD_LOGIC; 
  signal write_send_data_mux0042 : STD_LOGIC; 
  signal write_send_data_23_SRINV_4549 : STD_LOGIC; 
  signal write_send_data_23_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_23_CEINV_4547 : STD_LOGIC; 
  signal write_send_data_15_DXMUX_4614 : STD_LOGIC; 
  signal write_send_data_mux0047 : STD_LOGIC; 
  signal write_send_data_15_DYMUX_4600 : STD_LOGIC; 
  signal write_send_data_mux0048 : STD_LOGIC; 
  signal write_send_data_15_SRINV_4591 : STD_LOGIC; 
  signal write_send_data_15_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_15_CEINV_4589 : STD_LOGIC; 
  signal read_send_data_3_DXMUX_4656 : STD_LOGIC; 
  signal read_send_data_3_mux0000 : STD_LOGIC; 
  signal read_send_data_3_DYMUX_4642 : STD_LOGIC; 
  signal read_send_data_2_mux0000 : STD_LOGIC; 
  signal read_send_data_3_SRINV_4633 : STD_LOGIC; 
  signal read_send_data_3_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_3_CEINV_4631 : STD_LOGIC; 
  signal write_send_data_41_DXMUX_4698 : STD_LOGIC; 
  signal write_send_data_mux0023 : STD_LOGIC; 
  signal write_send_data_41_DYMUX_4685 : STD_LOGIC; 
  signal write_send_data_mux0024 : STD_LOGIC; 
  signal write_send_data_41_SRINV_4677 : STD_LOGIC; 
  signal write_send_data_41_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_41_CEINV_4675 : STD_LOGIC; 
  signal write_send_data_33_DXMUX_4740 : STD_LOGIC; 
  signal write_send_data_mux0031 : STD_LOGIC; 
  signal write_send_data_33_DYMUX_4727 : STD_LOGIC; 
  signal write_send_data_mux0032 : STD_LOGIC; 
  signal write_send_data_33_SRINV_4719 : STD_LOGIC; 
  signal write_send_data_33_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_33_CEINV_4717 : STD_LOGIC; 
  signal write_send_data_25_DXMUX_4782 : STD_LOGIC; 
  signal write_send_data_mux0039 : STD_LOGIC; 
  signal write_send_data_25_DYMUX_4768 : STD_LOGIC; 
  signal write_send_data_mux0040 : STD_LOGIC; 
  signal write_send_data_25_SRINV_4759 : STD_LOGIC; 
  signal write_send_data_25_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_25_CEINV_4757 : STD_LOGIC; 
  signal write_send_data_17_DXMUX_4824 : STD_LOGIC; 
  signal write_send_data_index0001 : STD_LOGIC; 
  signal write_send_data_17_DYMUX_4811 : STD_LOGIC; 
  signal write_send_data_index0003 : STD_LOGIC; 
  signal write_send_data_17_SRINV_4803 : STD_LOGIC; 
  signal write_send_data_17_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_17_CEINV_4801 : STD_LOGIC; 
  signal read_send_data_5_DXMUX_4866 : STD_LOGIC; 
  signal read_send_data_5_mux0000 : STD_LOGIC; 
  signal read_send_data_5_DYMUX_4852 : STD_LOGIC; 
  signal read_send_data_4_mux0000 : STD_LOGIC; 
  signal read_send_data_5_SRINV_4843 : STD_LOGIC; 
  signal read_send_data_5_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_5_CEINV_4841 : STD_LOGIC; 
  signal write_send_data_51_DXMUX_4908 : STD_LOGIC; 
  signal write_send_data_mux0013 : STD_LOGIC; 
  signal write_send_data_51_DYMUX_4895 : STD_LOGIC; 
  signal write_send_data_mux0014 : STD_LOGIC; 
  signal write_send_data_51_SRINV_4887 : STD_LOGIC; 
  signal write_send_data_51_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_51_CEINV_4885 : STD_LOGIC; 
  signal write_send_data_43_DXMUX_4950 : STD_LOGIC; 
  signal write_send_data_mux0021 : STD_LOGIC; 
  signal write_send_data_43_DYMUX_4937 : STD_LOGIC; 
  signal write_send_data_mux0022 : STD_LOGIC; 
  signal write_send_data_43_SRINV_4929 : STD_LOGIC; 
  signal write_send_data_43_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_43_CEINV_4927 : STD_LOGIC; 
  signal write_send_data_35_DXMUX_4992 : STD_LOGIC; 
  signal write_send_data_mux0029 : STD_LOGIC; 
  signal write_send_data_35_DYMUX_4979 : STD_LOGIC; 
  signal write_send_data_mux0030 : STD_LOGIC; 
  signal write_send_data_35_SRINV_4971 : STD_LOGIC; 
  signal write_send_data_35_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_35_CEINV_4969 : STD_LOGIC; 
  signal write_send_data_27_DXMUX_5034 : STD_LOGIC; 
  signal write_send_data_mux0037 : STD_LOGIC; 
  signal write_send_data_27_DYMUX_5020 : STD_LOGIC; 
  signal write_send_data_mux0038 : STD_LOGIC; 
  signal write_send_data_27_SRINV_5011 : STD_LOGIC; 
  signal write_send_data_27_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_27_CEINV_5009 : STD_LOGIC; 
  signal write_send_data_19_DXMUX_5076 : STD_LOGIC; 
  signal write_send_data_mux0045 : STD_LOGIC; 
  signal write_send_data_19_DYMUX_5062 : STD_LOGIC; 
  signal write_send_data_mux0046 : STD_LOGIC; 
  signal write_send_data_19_SRINV_5053 : STD_LOGIC; 
  signal write_send_data_19_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_19_CEINV_5051 : STD_LOGIC; 
  signal read_send_data_7_DXMUX_5118 : STD_LOGIC; 
  signal read_send_data_7_mux0000 : STD_LOGIC; 
  signal read_send_data_7_DYMUX_5104 : STD_LOGIC; 
  signal read_send_data_6_mux0000 : STD_LOGIC; 
  signal read_send_data_7_SRINV_5095 : STD_LOGIC; 
  signal read_send_data_7_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_7_CEINV_5093 : STD_LOGIC; 
  signal write_send_data_61_DXMUX_5160 : STD_LOGIC; 
  signal write_send_data_mux0003 : STD_LOGIC; 
  signal write_send_data_61_DYMUX_5147 : STD_LOGIC; 
  signal write_send_data_mux0004 : STD_LOGIC; 
  signal write_send_data_61_SRINV_5139 : STD_LOGIC; 
  signal write_send_data_61_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_61_CEINV_5137 : STD_LOGIC; 
  signal write_send_data_53_DXMUX_5202 : STD_LOGIC; 
  signal write_send_data_mux0011 : STD_LOGIC; 
  signal write_send_data_53_DYMUX_5189 : STD_LOGIC; 
  signal write_send_data_mux0012 : STD_LOGIC; 
  signal write_send_data_53_SRINV_5181 : STD_LOGIC; 
  signal write_send_data_53_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_53_CEINV_5179 : STD_LOGIC; 
  signal write_send_data_45_DXMUX_5244 : STD_LOGIC; 
  signal write_send_data_mux0019 : STD_LOGIC; 
  signal write_send_data_45_DYMUX_5231 : STD_LOGIC; 
  signal write_send_data_mux0020 : STD_LOGIC; 
  signal write_send_data_45_SRINV_5223 : STD_LOGIC; 
  signal write_send_data_45_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_45_CEINV_5221 : STD_LOGIC; 
  signal write_send_data_37_DXMUX_5286 : STD_LOGIC; 
  signal write_send_data_mux0027 : STD_LOGIC; 
  signal write_send_data_37_DYMUX_5273 : STD_LOGIC; 
  signal write_send_data_mux0028 : STD_LOGIC; 
  signal write_send_data_37_SRINV_5265 : STD_LOGIC; 
  signal write_send_data_37_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_37_CEINV_5263 : STD_LOGIC; 
  signal write_send_data_29_DXMUX_5328 : STD_LOGIC; 
  signal write_send_data_mux0035 : STD_LOGIC; 
  signal write_send_data_29_DYMUX_5315 : STD_LOGIC; 
  signal write_send_data_mux0036 : STD_LOGIC; 
  signal write_send_data_29_SRINV_5307 : STD_LOGIC; 
  signal write_send_data_29_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_29_CEINV_5305 : STD_LOGIC; 
  signal read_send_data_9_DXMUX_5370 : STD_LOGIC; 
  signal read_send_data_9_mux0000 : STD_LOGIC; 
  signal read_send_data_9_DYMUX_5356 : STD_LOGIC; 
  signal read_send_data_8_mux0000 : STD_LOGIC; 
  signal read_send_data_9_SRINV_5347 : STD_LOGIC; 
  signal read_send_data_9_CLKINVNOT : STD_LOGIC; 
  signal read_send_data_9_CEINV_5345 : STD_LOGIC; 
  signal write_send_data_63_DXMUX_5412 : STD_LOGIC; 
  signal write_send_data_mux0001 : STD_LOGIC; 
  signal write_send_data_63_DYMUX_5399 : STD_LOGIC; 
  signal write_send_data_mux0002 : STD_LOGIC; 
  signal write_send_data_63_SRINV_5391 : STD_LOGIC; 
  signal write_send_data_63_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_63_CEINV_5389 : STD_LOGIC; 
  signal write_send_data_55_DXMUX_5454 : STD_LOGIC; 
  signal write_send_data_mux0009 : STD_LOGIC; 
  signal write_send_data_55_DYMUX_5441 : STD_LOGIC; 
  signal write_send_data_mux0010 : STD_LOGIC; 
  signal write_send_data_55_SRINV_5433 : STD_LOGIC; 
  signal write_send_data_55_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_55_CEINV_5431 : STD_LOGIC; 
  signal write_send_data_47_DXMUX_5496 : STD_LOGIC; 
  signal write_send_data_mux0017 : STD_LOGIC; 
  signal write_send_data_47_DYMUX_5483 : STD_LOGIC; 
  signal write_send_data_mux0018 : STD_LOGIC; 
  signal write_send_data_47_SRINV_5475 : STD_LOGIC; 
  signal write_send_data_47_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_47_CEINV_5473 : STD_LOGIC; 
  signal write_send_data_39_DXMUX_5538 : STD_LOGIC; 
  signal write_send_data_mux0025 : STD_LOGIC; 
  signal write_send_data_39_DYMUX_5525 : STD_LOGIC; 
  signal write_send_data_mux0026 : STD_LOGIC; 
  signal write_send_data_39_SRINV_5517 : STD_LOGIC; 
  signal write_send_data_39_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_39_CEINV_5515 : STD_LOGIC; 
  signal write_send_data_57_DXMUX_5580 : STD_LOGIC; 
  signal write_send_data_mux0007 : STD_LOGIC; 
  signal write_send_data_57_DYMUX_5567 : STD_LOGIC; 
  signal write_send_data_mux0008 : STD_LOGIC; 
  signal write_send_data_57_SRINV_5559 : STD_LOGIC; 
  signal write_send_data_57_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_57_CEINV_5557 : STD_LOGIC; 
  signal write_send_data_49_DXMUX_5622 : STD_LOGIC; 
  signal write_send_data_mux0015 : STD_LOGIC; 
  signal write_send_data_49_DYMUX_5609 : STD_LOGIC; 
  signal write_send_data_mux0016 : STD_LOGIC; 
  signal write_send_data_49_SRINV_5601 : STD_LOGIC; 
  signal write_send_data_49_CLKINVNOT : STD_LOGIC; 
  signal write_send_data_49_CEINV_5599 : STD_LOGIC; 
  signal data_in_1_IFF_ICLK1INV_3749 : STD_LOGIC; 
  signal data_in_1_IFF_ICEINV_3747 : STD_LOGIC; 
  signal data_in_1_IFF_IDDRIN_MUX_3745 : STD_LOGIC; 
  signal data_in_10_IFF_ICLK1INV_3777 : STD_LOGIC; 
  signal data_in_10_IFF_ICEINV_3775 : STD_LOGIC; 
  signal data_in_10_IFF_IDDRIN_MUX_3773 : STD_LOGIC; 
  signal data_in_14_IFF_ICLK1INV_3973 : STD_LOGIC; 
  signal data_in_14_IFF_ICEINV_3971 : STD_LOGIC; 
  signal data_in_14_IFF_IDDRIN_MUX_3969 : STD_LOGIC; 
  signal bit_counter_6_1_FFY_RSTAND_2168 : STD_LOGIC; 
  signal MDC_OUTPUT_TFF_T1INV_3567 : STD_LOGIC; 
  signal MDC_OUTPUT_TFF_TSR_USED_3570 : STD_LOGIC; 
  signal Mtrien_MDC_3572 : STD_LOGIC; 
  signal MDC_OUTPUT_OTCLK1INV_3563 : STD_LOGIC; 
  signal data_in_0_IFF_ICLK1INV_3721 : STD_LOGIC; 
  signal data_in_0_IFF_ICEINV_3719 : STD_LOGIC; 
  signal data_in_0_IFF_IDDRIN_MUX_3717 : STD_LOGIC; 
  signal data_in_15_IFF_ICLK1INV_4019 : STD_LOGIC; 
  signal data_in_15_IFF_ICEINV_4017 : STD_LOGIC; 
  signal data_in_15_IFF_IDDRIN_MUX_4015 : STD_LOGIC; 
  signal data_in_7_IFF_ICLK1INV_4039 : STD_LOGIC; 
  signal data_in_7_IFF_ICEINV_4037 : STD_LOGIC; 
  signal data_in_7_IFF_IDDRIN_MUX_4035 : STD_LOGIC; 
  signal data_in_8_IFF_ICLK1INV_4065 : STD_LOGIC; 
  signal data_in_8_IFF_ICEINV_4063 : STD_LOGIC; 
  signal data_in_8_IFF_IDDRIN_MUX_4061 : STD_LOGIC; 
  signal data_in_9_IFF_ICLK1INV_4091 : STD_LOGIC; 
  signal data_in_9_IFF_ICEINV_4089 : STD_LOGIC; 
  signal data_in_9_IFF_IDDRIN_MUX_4087 : STD_LOGIC; 
  signal busy_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal busy_OUTPUT_OFF_PCICE_MUX_4134 : STD_LOGIC; 
  signal busy_OUTPUT_OFF_OSR_USED_4137 : STD_LOGIC; 
  signal busy_OUTPUT_OFF_OREV_USED_4139 : STD_LOGIC; 
  signal busy_in_1_4141 : STD_LOGIC; 
  signal busy_OUTPUT_OFF_O1INV_4143 : STD_LOGIC; 
  signal busy_OUTPUT_OTCLK1INV_4127 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal bit_counter : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal write_send_data : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal latched_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal read_send_data : STD_LOGIC_VECTOR ( 45 downto 0 ); 
  signal read_receive_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal latched_reg_addr : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal latched_phy_addr : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal counter : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_bit_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  write_send_data_59_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0005,
      O => write_send_data_59_DXMUX_1578
    );
  write_send_data_59_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0006,
      O => write_send_data_59_DYMUX_1565
    );
  write_send_data_59_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_59_SRINV_1557
    );
  write_send_data_59_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X19Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_59_CLKINVNOT
    );
  write_send_data_59_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_59_CEINV_1555
    );
  write_send_data_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_or0000,
      O => read_send_data_10_or0000_0
    );
  write_send_data_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0062,
      O => write_send_data_0_DYMUX_1607
    );
  write_send_data_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_0_SRINV_1599
    );
  write_send_data_0_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X3Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_0_CLKINVNOT
    );
  write_send_data_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_0_CEINV_1597
    );
  write_send_data_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0059,
      O => write_send_data_3_DXMUX_1656
    );
  write_send_data_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0060,
      O => write_send_data_3_DYMUX_1642
    );
  write_send_data_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_3_SRINV_1633
    );
  write_send_data_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X1Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_3_CLKINVNOT
    );
  write_send_data_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_3_CEINV_1631
    );
  write_send_data_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0057,
      O => write_send_data_5_DXMUX_1698
    );
  write_send_data_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0058,
      O => write_send_data_5_DYMUX_1684
    );
  write_send_data_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_5_SRINV_1675
    );
  write_send_data_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X0Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_5_CLKINVNOT
    );
  write_send_data_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_5_CEINV_1673
    );
  write_send_data_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0055,
      O => write_send_data_7_DXMUX_1740
    );
  write_send_data_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0056,
      O => write_send_data_7_DYMUX_1726
    );
  write_send_data_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_7_SRINV_1717
    );
  write_send_data_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X0Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_7_CLKINVNOT
    );
  write_send_data_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_7_CEINV_1715
    );
  write_send_data_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0053,
      O => write_send_data_9_DXMUX_1782
    );
  write_send_data_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0054,
      O => write_send_data_9_DYMUX_1768
    );
  write_send_data_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_9_SRINV_1759
    );
  write_send_data_9_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X0Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_9_CLKINVNOT
    );
  write_send_data_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_9_CEINV_1757
    );
  Mtridata_MDIO_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mtridata_MDIO_mux0000,
      O => Mtridata_MDIO_DYMUX_1805
    );
  Mtridata_MDIO_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => Mtridata_MDIO_CLKINV_1797
    );
  Mtrien_MDIO_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_0_not0001,
      O => read_send_data_0_not0001_0
    );
  Mtrien_MDIO_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mtrien_MDIO_mux0000_norst_1836,
      O => Mtrien_MDIO_DYMUX_1839
    );
  Mtrien_MDIO_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mtridata_MDIO_and0000,
      O => Mtrien_MDIO_SRINV_1831
    );
  Mtrien_MDIO_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y57",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => Mtrien_MDIO_CLKINV_1830
    );
  read_receive_data_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(6),
      O => read_receive_data_7_DXMUX_1869
    );
  read_receive_data_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(5),
      O => read_receive_data_7_DYMUX_1862
    );
  read_receive_data_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_receive_data_7_SRINV_1860
    );
  read_receive_data_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_receive_data_7_CLKINV_1859
    );
  read_receive_data_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data_0_and0000_0,
      O => read_receive_data_7_CEINV_1858
    );
  read_receive_data_9 : X_SFF
    generic map(
      LOC => "SLICE_X2Y77",
      INIT => '0'
    )
    port map (
      I => read_receive_data_9_DXMUX_1893,
      CE => read_receive_data_9_CEINV_1882,
      CLK => read_receive_data_9_CLKINV_1883,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_9_SRINV_1884,
      O => read_receive_data(9)
    );
  read_receive_data_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(8),
      O => read_receive_data_9_DXMUX_1893
    );
  read_receive_data_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(7),
      O => read_receive_data_9_DYMUX_1886
    );
  read_receive_data_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_receive_data_9_SRINV_1884
    );
  read_receive_data_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_receive_data_9_CLKINV_1883
    );
  read_receive_data_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data_0_and0000_0,
      O => read_receive_data_9_CEINV_1882
    );
  latched_reg_addr_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y15",
      INIT => '0'
    )
    port map (
      I => latched_reg_addr_1_DYMUX_1908,
      CE => latched_reg_addr_1_CEINV_1905,
      CLK => latched_reg_addr_1_CLKINV_1906,
      SET => GND,
      RST => GND,
      O => latched_reg_addr(0)
    );
  latched_reg_addr_1 : X_FF
    generic map(
      LOC => "SLICE_X3Y15",
      INIT => '0'
    )
    port map (
      I => latched_reg_addr_1_DXMUX_1914,
      CE => latched_reg_addr_1_CEINV_1905,
      CLK => latched_reg_addr_1_CLKINV_1906,
      SET => GND,
      RST => GND,
      O => latched_reg_addr(1)
    );
  latched_reg_addr_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr_1_IBUF_1360,
      O => latched_reg_addr_1_DXMUX_1914
    );
  latched_reg_addr_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr_0_IBUF_1361,
      O => latched_reg_addr_1_DYMUX_1908
    );
  latched_reg_addr_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => latched_reg_addr_1_CLKINV_1906
    );
  latched_reg_addr_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => latched_reg_addr_1_CEINV_1905
    );
  latched_reg_addr_2 : X_FF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      I => latched_reg_addr_3_DYMUX_1928,
      CE => latched_reg_addr_3_CEINV_1925,
      CLK => latched_reg_addr_3_CLKINV_1926,
      SET => GND,
      RST => GND,
      O => latched_reg_addr(2)
    );
  latched_reg_addr_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr_3_IBUF_1365,
      O => latched_reg_addr_3_DXMUX_1934
    );
  latched_reg_addr_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr_2_IBUF_1366,
      O => latched_reg_addr_3_DYMUX_1928
    );
  latched_reg_addr_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => latched_reg_addr_3_CLKINV_1926
    );
  latched_reg_addr_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => latched_reg_addr_3_CEINV_1925
    );
  latched_reg_addr_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr_4_IBUF_1369,
      O => latched_reg_addr_4_DYMUX_1946
    );
  latched_reg_addr_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => latched_reg_addr_4_CLKINV_1944
    );
  latched_reg_addr_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y8",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => latched_reg_addr_4_CEINV_1943
    );
  read_receive_data_0_cmp_gt000011_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data_0_cmp_gt000011,
      O => read_receive_data_0_cmp_gt000011_0
    );
  read_receive_data_0_cmp_gt000011_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_0_cmp_lt0000112_1965,
      O => read_send_data_0_cmp_lt0000112_0
    );
  read_send_data_0_cmp_lt0000112 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X14Y81"
    )
    port map (
      ADR0 => bit_counter(2),
      ADR1 => bit_counter(1),
      ADR2 => bit_counter(3),
      ADR3 => bit_counter(0),
      O => read_send_data_0_cmp_lt0000112_1965
    );
  N6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  N6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_0_cmp_lt0000134_1989,
      O => read_send_data_0_cmp_lt0000134_0
    );
  N10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  N10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  N20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => N20,
      O => N20_0
    );
  N20_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  latched_phy_addr_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr_1_IBUF_1386,
      O => latched_phy_addr_1_DXMUX_2062
    );
  latched_phy_addr_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr_0_IBUF_1387,
      O => latched_phy_addr_1_DYMUX_2056
    );
  latched_phy_addr_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => latched_phy_addr_1_CLKINV_2054
    );
  latched_phy_addr_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => latched_phy_addr_1_CEINV_2053
    );
  latched_phy_addr_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr_3_IBUF_1390,
      O => latched_phy_addr_3_DXMUX_2082
    );
  latched_phy_addr_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr_2_IBUF_1391,
      O => latched_phy_addr_3_DYMUX_2076
    );
  latched_phy_addr_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => latched_phy_addr_3_CLKINV_2074
    );
  latched_phy_addr_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => latched_phy_addr_3_CEINV_2073
    );
  latched_phy_addr_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr_4_IBUF_1394,
      O => latched_phy_addr_4_DYMUX_2094
    );
  latched_phy_addr_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => latched_phy_addr_4_CLKINV_2092
    );
  latched_phy_addr_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => latched_phy_addr_4_CEINV_2091
    );
  Mtridata_MDC_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y91",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div1,
      O => Mtridata_MDC_DYMUX_2104
    );
  Mtridata_MDC_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y91",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => Mtridata_MDC_CLKINV_2102
    );
  read_receive_data_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(10),
      O => read_receive_data_11_DXMUX_2126
    );
  read_receive_data_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(9),
      O => read_receive_data_11_DYMUX_2119
    );
  read_receive_data_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_receive_data_11_SRINV_2117
    );
  read_receive_data_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_receive_data_11_CLKINV_2116
    );
  read_receive_data_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data_0_and0000_0,
      O => read_receive_data_11_CEINV_2115
    );
  read_receive_data_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(12),
      O => read_receive_data_13_DXMUX_2150
    );
  read_receive_data_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(11),
      O => read_receive_data_13_DYMUX_2143
    );
  read_receive_data_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_receive_data_13_SRINV_2141
    );
  read_receive_data_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_receive_data_13_CLKINV_2140
    );
  read_receive_data_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data_0_and0000_0,
      O => read_receive_data_13_CEINV_2139
    );
  bit_counter_6_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_6_FXMUX_3304,
      O => bit_counter_6_1_DYMUX_2163
    );
  bit_counter_6_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X14Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => bit_counter_6_1_CLKINVNOT
    );
  read_receive_data_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(14),
      O => read_receive_data_15_DXMUX_2188
    );
  read_receive_data_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(13),
      O => read_receive_data_15_DYMUX_2181
    );
  read_receive_data_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_receive_data_15_SRINV_2179
    );
  read_receive_data_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_receive_data_15_CLKINV_2178
    );
  read_receive_data_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data_0_and0000_0,
      O => read_receive_data_15_CEINV_2177
    );
  write_send_data_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0061,
      O => write_send_data_1_DXMUX_2224
    );
  write_send_data_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv_pack_1,
      O => read_send_data_11_not0001_inv
    );
  write_send_data_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_1_SRINV_2207
    );
  write_send_data_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X13Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_1_CLKINVNOT
    );
  write_send_data_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_1_CEINV_2205
    );
  clk_div1_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X45Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div1,
      O => clk_div1_DYMUX_2239
    );
  clk_div1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_or0000,
      O => clk_div1_SRINV_2237
    );
  clk_div1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => clk_div1_CLKINV_2236
    );
  clk_div1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_not0002,
      O => clk_div1_CEINV_2235
    );
  clk_div_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => busy_in_cmp_eq0000_pack_1,
      O => busy_in_cmp_eq0000_1409
    );
  read_send_data_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(9),
      O => read_send_data_10_DYMUX_2278
    );
  read_send_data_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_or0000_0,
      O => read_send_data_10_SRINV_2276
    );
  read_send_data_10_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X3Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_10_CLKINVNOT
    );
  read_send_data_10_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_10_CEINV_2274
    );
  read_send_data_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(10),
      O => read_send_data_11_DXMUX_2296
    );
  read_send_data_11_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_11_REVUSED_2294
    );
  read_send_data_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_11_SRINV_2292
    );
  read_send_data_11_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X2Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_11_CLKINVNOT
    );
  read_send_data_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_11_CEINV_2290
    );
  read_send_data_21_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(20),
      O => read_send_data_21_DXMUX_2334
    );
  read_send_data_21_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_21_REVUSED_2326
    );
  read_send_data_21_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_19_rt_2322,
      O => read_send_data_21_DYMUX_2325
    );
  read_send_data_21_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_21_SRINV_2313
    );
  read_send_data_21_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X24Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_21_CLKINVNOT
    );
  read_send_data_21_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_21_CEINV_2311
    );
  read_send_data_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(11),
      O => read_send_data_12_DXMUX_2353
    );
  read_send_data_12_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_12_REVUSED_2351
    );
  read_send_data_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_12_SRINV_2349
    );
  read_send_data_12_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X3Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_12_CLKINVNOT
    );
  read_send_data_12_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_12_CEINV_2347
    );
  read_send_data_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(12),
      O => read_send_data_13_DYMUX_2369
    );
  read_send_data_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_or0000_0,
      O => read_send_data_13_SRINV_2367
    );
  read_send_data_13_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X5Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_13_CLKINVNOT
    );
  read_send_data_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_13_CEINV_2365
    );
  read_send_data_31_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(30),
      O => read_send_data_31_DXMUX_2406
    );
  read_send_data_31_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_31_REVUSED_2398
    );
  read_send_data_31_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_29_rt_2394,
      O => read_send_data_31_DYMUX_2397
    );
  read_send_data_31_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_31_SRINV_2385
    );
  read_send_data_31_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X25Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_31_CLKINVNOT
    );
  read_send_data_31_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_31_CEINV_2383
    );
  read_send_data_23_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(22),
      O => read_send_data_23_DXMUX_2444
    );
  read_send_data_23_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_23_REVUSED_2436
    );
  read_send_data_23_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_21_rt_2432,
      O => read_send_data_23_DYMUX_2435
    );
  read_send_data_23_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_23_SRINV_2423
    );
  read_send_data_23_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X26Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_23_CLKINVNOT
    );
  read_send_data_23_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_23_CEINV_2421
    );
  read_send_data_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(14),
      O => read_send_data_15_DXMUX_2482
    );
  read_send_data_15_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_15_REVUSED_2474
    );
  read_send_data_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_13_rt_2470,
      O => read_send_data_15_DYMUX_2473
    );
  read_send_data_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_15_SRINV_2461
    );
  read_send_data_15_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X14Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_15_CLKINVNOT
    );
  read_send_data_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_15_CEINV_2459
    );
  latched_write_read_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_read_INBUF,
      O => latched_write_read_DYMUX_2496
    );
  latched_write_read_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => latched_write_read_CLKINV_2494
    );
  latched_write_read_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y51",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => latched_write_read_CEINV_2493
    );
  read_send_data_41_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(40),
      O => read_send_data_41_DXMUX_2532
    );
  read_send_data_41_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_41_REVUSED_2524
    );
  read_send_data_41_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_39_rt_2520,
      O => read_send_data_41_DYMUX_2523
    );
  read_send_data_41_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_41_SRINV_2511
    );
  read_send_data_41_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X17Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_41_CLKINVNOT
    );
  read_send_data_41_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y56",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_41_CEINV_2509
    );
  read_send_data_33_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(32),
      O => read_send_data_33_DXMUX_2570
    );
  read_send_data_33_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_33_REVUSED_2562
    );
  read_send_data_33_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_31_rt_2558,
      O => read_send_data_33_DYMUX_2561
    );
  read_send_data_33_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_33_SRINV_2549
    );
  read_send_data_33_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X24Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_33_CLKINVNOT
    );
  read_send_data_33_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_33_CEINV_2547
    );
  read_send_data_25_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(24),
      O => read_send_data_25_DXMUX_2608
    );
  read_send_data_25_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_25_REVUSED_2600
    );
  read_send_data_25_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_23_rt_2596,
      O => read_send_data_25_DYMUX_2599
    );
  read_send_data_25_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_25_SRINV_2587
    );
  read_send_data_25_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X26Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_25_CLKINVNOT
    );
  read_send_data_25_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_25_CEINV_2585
    );
  read_send_data_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(16),
      O => read_send_data_17_DXMUX_2646
    );
  read_send_data_17_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_17_REVUSED_2638
    );
  read_send_data_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_15_rt_2634,
      O => read_send_data_17_DYMUX_2637
    );
  read_send_data_17_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_17_SRINV_2625
    );
  read_send_data_17_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X16Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_17_CLKINVNOT
    );
  read_send_data_17_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_17_CEINV_2623
    );
  read_send_data_43_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(42),
      O => read_send_data_43_DXMUX_2684
    );
  read_send_data_43_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_43_REVUSED_2676
    );
  read_send_data_43_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_41_rt_2672,
      O => read_send_data_43_DYMUX_2675
    );
  read_send_data_43_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_43_SRINV_2663
    );
  read_send_data_43_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X16Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_43_CLKINVNOT
    );
  read_send_data_43_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_43_CEINV_2661
    );
  read_send_data_35_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(34),
      O => read_send_data_35_DXMUX_2722
    );
  read_send_data_35_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_35_REVUSED_2714
    );
  read_send_data_35_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_33_rt_2710,
      O => read_send_data_35_DYMUX_2713
    );
  read_send_data_35_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_35_SRINV_2701
    );
  read_send_data_35_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X20Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_35_CLKINVNOT
    );
  read_send_data_35_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_35_CEINV_2699
    );
  read_send_data_27_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(26),
      O => read_send_data_27_DXMUX_2760
    );
  read_send_data_27_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_27_REVUSED_2752
    );
  read_send_data_27_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_25_rt_2748,
      O => read_send_data_27_DYMUX_2751
    );
  read_send_data_27_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_27_SRINV_2739
    );
  read_send_data_27_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X24Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_27_CLKINVNOT
    );
  read_send_data_27_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_27_CEINV_2737
    );
  read_send_data_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(18),
      O => read_send_data_19_DXMUX_2798
    );
  read_send_data_19_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_19_REVUSED_2790
    );
  read_send_data_19_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_17_rt_2786,
      O => read_send_data_19_DYMUX_2789
    );
  read_send_data_19_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_19_SRINV_2777
    );
  read_send_data_19_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X19Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_19_CLKINVNOT
    );
  read_send_data_19_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_19_CEINV_2775
    );
  read_send_data_45_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(44),
      O => read_send_data_45_DXMUX_2836
    );
  read_send_data_45_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_45_REVUSED_2828
    );
  read_send_data_45_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_43_rt_2824,
      O => read_send_data_45_DYMUX_2827
    );
  read_send_data_45_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_45_SRINV_2815
    );
  read_send_data_45_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X16Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_45_CLKINVNOT
    );
  read_send_data_45_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_45_CEINV_2813
    );
  read_send_data_37_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(36),
      O => read_send_data_37_DXMUX_2874
    );
  read_send_data_37_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_37_REVUSED_2866
    );
  read_send_data_37_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_35_rt_2862,
      O => read_send_data_37_DYMUX_2865
    );
  read_send_data_37_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_37_SRINV_2853
    );
  read_send_data_37_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X18Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_37_CLKINVNOT
    );
  read_send_data_37_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_37_CEINV_2851
    );
  read_send_data_28 : X_SFF
    generic map(
      LOC => "SLICE_X25Y70",
      INIT => '0'
    )
    port map (
      I => read_send_data_29_DYMUX_2903,
      CE => read_send_data_29_CEINV_2889,
      CLK => read_send_data_29_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_29_REVUSED_2904,
      SRST => read_send_data_29_SRINV_2891,
      O => read_send_data(28)
    );
  read_send_data_29 : X_SFF
    generic map(
      LOC => "SLICE_X25Y70",
      INIT => '0'
    )
    port map (
      I => read_send_data_29_DXMUX_2912,
      CE => read_send_data_29_CEINV_2889,
      CLK => read_send_data_29_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_29_REVUSED_2904,
      SRST => read_send_data_29_SRINV_2891,
      O => read_send_data(29)
    );
  read_send_data_29_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(28),
      O => read_send_data_29_DXMUX_2912
    );
  read_send_data_29_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_29_REVUSED_2904
    );
  read_send_data_29_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_27_rt_2900,
      O => read_send_data_29_DYMUX_2903
    );
  read_send_data_29_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_29_SRINV_2891
    );
  read_send_data_29_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X25Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_29_CLKINVNOT
    );
  read_send_data_29_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_29_CEINV_2889
    );
  read_send_data_37_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X17Y59"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => read_send_data(37),
      O => read_send_data_37_rt_2938
    );
  read_send_data_38 : X_SFF
    generic map(
      LOC => "SLICE_X17Y59",
      INIT => '0'
    )
    port map (
      I => read_send_data_39_DYMUX_2941,
      CE => read_send_data_39_CEINV_2927,
      CLK => read_send_data_39_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_39_REVUSED_2942,
      SRST => read_send_data_39_SRINV_2929,
      O => read_send_data(38)
    );
  read_send_data_39 : X_SFF
    generic map(
      LOC => "SLICE_X17Y59",
      INIT => '0'
    )
    port map (
      I => read_send_data_39_DXMUX_2950,
      CE => read_send_data_39_CEINV_2927,
      CLK => read_send_data_39_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_39_REVUSED_2942,
      SRST => read_send_data_39_SRINV_2929,
      O => read_send_data(39)
    );
  read_send_data_39_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data(38),
      O => read_send_data_39_DXMUX_2950
    );
  read_send_data_39_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_11_not0001_inv,
      O => read_send_data_39_REVUSED_2942
    );
  read_send_data_39_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_37_rt_2938,
      O => read_send_data_39_DYMUX_2941
    );
  read_send_data_39_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_39_SRINV_2929
    );
  read_send_data_39_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X17Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_39_CLKINVNOT
    );
  read_send_data_39_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y59",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_0,
      O => read_send_data_39_CEINV_2927
    );
  busy_in : X_SFF
    generic map(
      LOC => "SLICE_X46Y82",
      INIT => '0'
    )
    port map (
      I => busy_in_DXMUX_2969,
      CE => busy_in_CEINV_2963,
      CLK => busy_in_CLKINV_2964,
      SET => GND,
      RST => GND,
      SSET => busy_in_REVUSED_2967,
      SRST => busy_in_SRINV_2965,
      O => busy_in_1448
    );
  busy_in_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X46Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => busy_in_BXINV_2968,
      O => busy_in_DXMUX_2969
    );
  busy_in_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => busy_in_BXINV_2968
    );
  busy_in_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X46Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => busy_in_REVUSED_2967
    );
  busy_in_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => busy_in_SRINV_2965
    );
  busy_in_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => busy_in_CLKINV_2964
    );
  busy_in_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X46Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => busy_in_cmp_eq0000_1409,
      O => busy_in_CEINV_2963
    );
  counter_cmp_eq000010 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X48Y82"
    )
    port map (
      ADR0 => counter(0),
      ADR1 => counter(2),
      ADR2 => counter(3),
      ADR3 => counter(1),
      O => counter_cmp_eq000010_2985
    );
  counter_cmp_eq000010_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_cmp_eq000010_2985,
      O => counter_cmp_eq000010_0
    );
  read_receive_data_0 : X_SFF
    generic map(
      LOC => "SLICE_X1Y84",
      INIT => '0'
    )
    port map (
      I => read_receive_data_1_DYMUX_2999,
      CE => read_receive_data_1_CEINV_2995,
      CLK => read_receive_data_1_CLKINV_2996,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_1_SRINV_2997,
      O => read_receive_data(0)
    );
  read_receive_data_1 : X_SFF
    generic map(
      LOC => "SLICE_X1Y84",
      INIT => '0'
    )
    port map (
      I => read_receive_data_1_DXMUX_3006,
      CE => read_receive_data_1_CEINV_2995,
      CLK => read_receive_data_1_CLKINV_2996,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_1_SRINV_2997,
      O => read_receive_data(1)
    );
  read_receive_data_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(0),
      O => read_receive_data_1_DXMUX_3006
    );
  read_receive_data_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => MDIO_INBUF,
      O => read_receive_data_1_DYMUX_2999
    );
  read_receive_data_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_receive_data_1_SRINV_2997
    );
  read_receive_data_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_receive_data_1_CLKINV_2996
    );
  read_receive_data_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data_0_and0000_0,
      O => read_receive_data_1_CEINV_2995
    );
  N18_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  read_receive_data_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(2),
      O => read_receive_data_3_DXMUX_3042
    );
  read_receive_data_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(1),
      O => read_receive_data_3_DYMUX_3035
    );
  read_receive_data_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_receive_data_3_SRINV_3033
    );
  read_receive_data_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_receive_data_3_CLKINV_3032
    );
  read_receive_data_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data_0_and0000_0,
      O => read_receive_data_3_CEINV_3031
    );
  clk_div_not0002_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_cmp_eq000023_pack_1,
      O => counter_cmp_eq000023_1460
    );
  read_receive_data_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(4),
      O => read_receive_data_5_DXMUX_3090
    );
  read_receive_data_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(3),
      O => read_receive_data_5_DYMUX_3083
    );
  read_receive_data_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_receive_data_5_SRINV_3081
    );
  read_receive_data_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_receive_data_5_CLKINV_3080
    );
  read_receive_data_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data_0_and0000_0,
      O => read_receive_data_5_CEINV_3079
    );
  bit_counter_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y78"
    )
    port map (
      O => bit_counter_0_LOGIC_ZERO_3116
    );
  bit_counter_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X15Y78"
    )
    port map (
      O => bit_counter_0_LOGIC_ONE_3140
    );
  bit_counter_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_0_XORF_3141,
      O => bit_counter_0_DXMUX_3143
    );
  bit_counter_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y78"
    )
    port map (
      I0 => bit_counter_0_CYINIT_3139,
      I1 => Mcount_bit_counter_lut(0),
      O => bit_counter_0_XORF_3141
    );
  bit_counter_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y78"
    )
    port map (
      IA => bit_counter_0_LOGIC_ONE_3140,
      IB => bit_counter_0_CYINIT_3139,
      SEL => bit_counter_0_CYSELF_3130,
      O => Mcount_bit_counter_cy_0_Q
    );
  bit_counter_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_0_BXINV_3128,
      O => bit_counter_0_CYINIT_3139
    );
  bit_counter_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_bit_counter_lut(0),
      O => bit_counter_0_CYSELF_3130
    );
  bit_counter_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => bit_counter_0_BXINV_3128
    );
  bit_counter_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_0_XORG_3119,
      O => bit_counter_0_DYMUX_3121
    );
  bit_counter_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y78"
    )
    port map (
      I0 => Mcount_bit_counter_cy_0_Q,
      I1 => bit_counter_0_G,
      O => bit_counter_0_XORG_3119
    );
  bit_counter_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_0_CYMUXG_3118,
      O => Mcount_bit_counter_cy_1_Q
    );
  bit_counter_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X15Y78"
    )
    port map (
      IA => bit_counter_0_LOGIC_ZERO_3116,
      IB => Mcount_bit_counter_cy_0_Q,
      SEL => bit_counter_0_CYSELG_3107,
      O => bit_counter_0_CYMUXG_3118
    );
  bit_counter_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_0_G,
      O => bit_counter_0_CYSELG_3107
    );
  bit_counter_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => bit_counter_0_SRINV_3105
    );
  bit_counter_0_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X15Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => bit_counter_0_CLKINVNOT
    );
  bit_counter_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y79"
    )
    port map (
      O => bit_counter_2_LOGIC_ZERO_3170
    );
  bit_counter_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_2_XORF_3197,
      O => bit_counter_2_DXMUX_3199
    );
  bit_counter_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y79"
    )
    port map (
      I0 => bit_counter_2_CYINIT_3196,
      I1 => bit_counter_2_F,
      O => bit_counter_2_XORF_3197
    );
  bit_counter_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y79"
    )
    port map (
      IA => bit_counter_2_LOGIC_ZERO_3170,
      IB => bit_counter_2_CYINIT_3196,
      SEL => bit_counter_2_CYSELF_3176,
      O => Mcount_bit_counter_cy_2_Q
    );
  bit_counter_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y79"
    )
    port map (
      IA => bit_counter_2_LOGIC_ZERO_3170,
      IB => bit_counter_2_LOGIC_ZERO_3170,
      SEL => bit_counter_2_CYSELF_3176,
      O => bit_counter_2_CYMUXF2_3171
    );
  bit_counter_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_bit_counter_cy_1_Q,
      O => bit_counter_2_CYINIT_3196
    );
  bit_counter_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_2_F,
      O => bit_counter_2_CYSELF_3176
    );
  bit_counter_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_2_XORG_3178,
      O => bit_counter_2_DYMUX_3180
    );
  bit_counter_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y79"
    )
    port map (
      I0 => Mcount_bit_counter_cy_2_Q,
      I1 => bit_counter_2_G,
      O => bit_counter_2_XORG_3178
    );
  bit_counter_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_2_CYMUXFAST_3175,
      O => Mcount_bit_counter_cy_3_Q
    );
  bit_counter_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X15Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_bit_counter_cy_1_Q,
      O => bit_counter_2_FASTCARRY_3173
    );
  bit_counter_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X15Y79"
    )
    port map (
      I0 => bit_counter_2_CYSELG_3161,
      I1 => bit_counter_2_CYSELF_3176,
      O => bit_counter_2_CYAND_3174
    );
  bit_counter_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X15Y79"
    )
    port map (
      IA => bit_counter_2_CYMUXG2_3172,
      IB => bit_counter_2_FASTCARRY_3173,
      SEL => bit_counter_2_CYAND_3174,
      O => bit_counter_2_CYMUXFAST_3175
    );
  bit_counter_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y79"
    )
    port map (
      IA => bit_counter_2_LOGIC_ZERO_3170,
      IB => bit_counter_2_CYMUXF2_3171,
      SEL => bit_counter_2_CYSELG_3161,
      O => bit_counter_2_CYMUXG2_3172
    );
  bit_counter_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_2_G,
      O => bit_counter_2_CYSELG_3161
    );
  bit_counter_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => bit_counter_2_SRINV_3159
    );
  bit_counter_2_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X15Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => bit_counter_2_CLKINVNOT
    );
  bit_counter_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y80"
    )
    port map (
      O => bit_counter_4_LOGIC_ZERO_3226
    );
  bit_counter_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_4_XORF_3253,
      O => bit_counter_4_DXMUX_3255
    );
  bit_counter_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y80"
    )
    port map (
      I0 => bit_counter_4_CYINIT_3252,
      I1 => bit_counter_4_F,
      O => bit_counter_4_XORF_3253
    );
  bit_counter_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y80"
    )
    port map (
      IA => bit_counter_4_LOGIC_ZERO_3226,
      IB => bit_counter_4_CYINIT_3252,
      SEL => bit_counter_4_CYSELF_3232,
      O => Mcount_bit_counter_cy_4_Q
    );
  bit_counter_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y80"
    )
    port map (
      IA => bit_counter_4_LOGIC_ZERO_3226,
      IB => bit_counter_4_LOGIC_ZERO_3226,
      SEL => bit_counter_4_CYSELF_3232,
      O => bit_counter_4_CYMUXF2_3227
    );
  bit_counter_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_bit_counter_cy_3_Q,
      O => bit_counter_4_CYINIT_3252
    );
  bit_counter_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_4_F,
      O => bit_counter_4_CYSELF_3232
    );
  bit_counter_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_4_XORG_3234,
      O => bit_counter_4_DYMUX_3236
    );
  bit_counter_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y80"
    )
    port map (
      I0 => Mcount_bit_counter_cy_4_Q,
      I1 => bit_counter_4_G,
      O => bit_counter_4_XORG_3234
    );
  bit_counter_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X15Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_bit_counter_cy_3_Q,
      O => bit_counter_4_FASTCARRY_3229
    );
  bit_counter_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X15Y80"
    )
    port map (
      I0 => bit_counter_4_CYSELG_3217,
      I1 => bit_counter_4_CYSELF_3232,
      O => bit_counter_4_CYAND_3230
    );
  bit_counter_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X15Y80"
    )
    port map (
      IA => bit_counter_4_CYMUXG2_3228,
      IB => bit_counter_4_FASTCARRY_3229,
      SEL => bit_counter_4_CYAND_3230,
      O => bit_counter_4_CYMUXFAST_3231
    );
  bit_counter_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X15Y80"
    )
    port map (
      IA => bit_counter_4_LOGIC_ZERO_3226,
      IB => bit_counter_4_CYMUXF2_3227,
      SEL => bit_counter_4_CYSELG_3217,
      O => bit_counter_4_CYMUXG2_3228
    );
  bit_counter_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X15Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_4_G,
      O => bit_counter_4_CYSELG_3217
    );
  bit_counter_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => bit_counter_4_SRINV_3215
    );
  bit_counter_4_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X15Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => bit_counter_4_CLKINVNOT
    );
  bit_counter_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X15Y81"
    )
    port map (
      O => bit_counter_6_LOGIC_ZERO_3302
    );
  bit_counter_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_6_FXMUX_3304,
      O => bit_counter_6_DXMUX_3305
    );
  bit_counter_6_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_6_XORF_3303,
      O => bit_counter_6_FXMUX_3304
    );
  bit_counter_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X15Y81"
    )
    port map (
      I0 => bit_counter_6_CYINIT_3301,
      I1 => bit_counter_6_F,
      O => bit_counter_6_XORF_3303
    );
  bit_counter_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X15Y81"
    )
    port map (
      IA => bit_counter_6_LOGIC_ZERO_3302,
      IB => bit_counter_6_CYINIT_3301,
      SEL => bit_counter_6_CYSELF_3292,
      O => Mcount_bit_counter_cy_6_Q
    );
  bit_counter_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X15Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_4_CYMUXFAST_3231,
      O => bit_counter_6_CYINIT_3301
    );
  bit_counter_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X15Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_6_F,
      O => bit_counter_6_CYSELF_3292
    );
  bit_counter_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter_6_XORG_3282,
      O => bit_counter_6_DYMUX_3284
    );
  bit_counter_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X15Y81"
    )
    port map (
      I0 => Mcount_bit_counter_cy_6_Q,
      I1 => bit_counter_7_rt_3279,
      O => bit_counter_6_XORG_3282
    );
  bit_counter_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => bit_counter_6_SRINV_3271
    );
  bit_counter_6_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X15Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => bit_counter_6_CLKINVNOT
    );
  counter_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      O => counter_0_LOGIC_ZERO_3334
    );
  counter_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      O => counter_0_LOGIC_ONE_3357
    );
  counter_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_0_XORF_3358,
      O => counter_0_DXMUX_3360
    );
  counter_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      I0 => counter_0_CYINIT_3356,
      I1 => Mcount_counter_lut(0),
      O => counter_0_XORF_3358
    );
  counter_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      IA => counter_0_LOGIC_ONE_3357,
      IB => counter_0_CYINIT_3356,
      SEL => counter_0_CYSELF_3347,
      O => Mcount_counter_cy_0_Q
    );
  counter_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_0_BXINV_3345,
      O => counter_0_CYINIT_3356
    );
  counter_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_counter_lut(0),
      O => counter_0_CYSELF_3347
    );
  counter_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => counter_0_BXINV_3345
    );
  counter_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_0_XORG_3337,
      O => counter_0_DYMUX_3339
    );
  counter_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      I0 => Mcount_counter_cy_0_Q,
      I1 => counter_0_G,
      O => counter_0_XORG_3337
    );
  counter_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_0_CYMUXG_3336,
      O => Mcount_counter_cy_1_Q
    );
  counter_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X49Y82"
    )
    port map (
      IA => counter_0_LOGIC_ZERO_3334,
      IB => Mcount_counter_cy_0_Q,
      SEL => counter_0_CYSELG_3325,
      O => counter_0_CYMUXG_3336
    );
  counter_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_0_G,
      O => counter_0_CYSELG_3325
    );
  counter_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_or0000,
      O => counter_0_SRINV_3323
    );
  counter_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_0_CLKINV_3322
    );
  counter_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => busy_in_1448,
      O => counter_0_CEINV_3321
    );
  counter_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      O => counter_2_LOGIC_ZERO_3388
    );
  counter_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_2_XORF_3414,
      O => counter_2_DXMUX_3416
    );
  counter_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      I0 => counter_2_CYINIT_3413,
      I1 => counter_2_F,
      O => counter_2_XORF_3414
    );
  counter_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      IA => counter_2_LOGIC_ZERO_3388,
      IB => counter_2_CYINIT_3413,
      SEL => counter_2_CYSELF_3394,
      O => Mcount_counter_cy_2_Q
    );
  counter_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      IA => counter_2_LOGIC_ZERO_3388,
      IB => counter_2_LOGIC_ZERO_3388,
      SEL => counter_2_CYSELF_3394,
      O => counter_2_CYMUXF2_3389
    );
  counter_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_counter_cy_1_Q,
      O => counter_2_CYINIT_3413
    );
  counter_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_2_F,
      O => counter_2_CYSELF_3394
    );
  counter_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_2_XORG_3396,
      O => counter_2_DYMUX_3398
    );
  counter_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      I0 => Mcount_counter_cy_2_Q,
      I1 => counter_2_G,
      O => counter_2_XORG_3396
    );
  counter_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_2_CYMUXFAST_3393,
      O => Mcount_counter_cy_3_Q
    );
  counter_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_counter_cy_1_Q,
      O => counter_2_FASTCARRY_3391
    );
  counter_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      I0 => counter_2_CYSELG_3379,
      I1 => counter_2_CYSELF_3394,
      O => counter_2_CYAND_3392
    );
  counter_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      IA => counter_2_CYMUXG2_3390,
      IB => counter_2_FASTCARRY_3391,
      SEL => counter_2_CYAND_3392,
      O => counter_2_CYMUXFAST_3393
    );
  counter_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y83"
    )
    port map (
      IA => counter_2_LOGIC_ZERO_3388,
      IB => counter_2_CYMUXF2_3389,
      SEL => counter_2_CYSELG_3379,
      O => counter_2_CYMUXG2_3390
    );
  counter_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_2_G,
      O => counter_2_CYSELG_3379
    );
  counter_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_or0000,
      O => counter_2_SRINV_3377
    );
  counter_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_2_CLKINV_3376
    );
  counter_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => busy_in_1448,
      O => counter_2_CEINV_3375
    );
  counter_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      O => counter_4_LOGIC_ZERO_3444
    );
  counter_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_4_XORF_3470,
      O => counter_4_DXMUX_3472
    );
  counter_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      I0 => counter_4_CYINIT_3469,
      I1 => counter_4_F,
      O => counter_4_XORF_3470
    );
  counter_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      IA => counter_4_LOGIC_ZERO_3444,
      IB => counter_4_CYINIT_3469,
      SEL => counter_4_CYSELF_3450,
      O => Mcount_counter_cy_4_Q
    );
  counter_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      IA => counter_4_LOGIC_ZERO_3444,
      IB => counter_4_LOGIC_ZERO_3444,
      SEL => counter_4_CYSELF_3450,
      O => counter_4_CYMUXF2_3445
    );
  counter_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_counter_cy_3_Q,
      O => counter_4_CYINIT_3469
    );
  counter_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_4_F,
      O => counter_4_CYSELF_3450
    );
  counter_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_4_XORG_3452,
      O => counter_4_DYMUX_3454
    );
  counter_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      I0 => Mcount_counter_cy_4_Q,
      I1 => counter_4_G,
      O => counter_4_XORG_3452
    );
  counter_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mcount_counter_cy_3_Q,
      O => counter_4_FASTCARRY_3447
    );
  counter_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      I0 => counter_4_CYSELG_3435,
      I1 => counter_4_CYSELF_3450,
      O => counter_4_CYAND_3448
    );
  counter_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      IA => counter_4_CYMUXG2_3446,
      IB => counter_4_FASTCARRY_3447,
      SEL => counter_4_CYAND_3448,
      O => counter_4_CYMUXFAST_3449
    );
  counter_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X49Y84"
    )
    port map (
      IA => counter_4_LOGIC_ZERO_3444,
      IB => counter_4_CYMUXF2_3445,
      SEL => counter_4_CYSELG_3435,
      O => counter_4_CYMUXG2_3446
    );
  counter_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_4_G,
      O => counter_4_CYSELG_3435
    );
  counter_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_or0000,
      O => counter_4_SRINV_3433
    );
  counter_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_4_CLKINV_3432
    );
  counter_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => busy_in_1448,
      O => counter_4_CEINV_3431
    );
  counter_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      O => counter_6_LOGIC_ZERO_3518
    );
  counter_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_6_XORF_3519,
      O => counter_6_DXMUX_3521
    );
  counter_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      I0 => counter_6_CYINIT_3517,
      I1 => counter_6_F,
      O => counter_6_XORF_3519
    );
  counter_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      IA => counter_6_LOGIC_ZERO_3518,
      IB => counter_6_CYINIT_3517,
      SEL => counter_6_CYSELF_3508,
      O => Mcount_counter_cy_6_Q
    );
  counter_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_4_CYMUXFAST_3449,
      O => counter_6_CYINIT_3517
    );
  counter_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_6_F,
      O => counter_6_CYSELF_3508
    );
  counter_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_6_XORG_3499,
      O => counter_6_DYMUX_3501
    );
  counter_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X49Y85"
    )
    port map (
      I0 => Mcount_counter_cy_6_Q,
      I1 => counter_7_rt_3496,
      O => counter_6_XORG_3499
    );
  counter_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_or0000,
      O => counter_6_SRINV_3488
    );
  counter_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => counter_6_CLKINV_3487
    );
  counter_6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X49Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => busy_in_1448,
      O => counter_6_CEINV_3486
    );
  MDIO_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD210"
    )
    port map (
      I => MDIO_O,
      CTL => MDIO_T,
      O => MDIO
    );
  MDIO_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD210",
      PATHPULSE => 638 ps
    )
    port map (
      I => MDIO,
      O => MDIO_INBUF
    );
  MDC_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD12"
    )
    port map (
      I => MDC_O,
      CTL => MDC_T,
      O => MDC
    );
  strt_IBUF : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt,
      O => strt_INBUF
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD28",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  reg_addr_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD189",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr(0),
      O => reg_addr_0_INBUF
    );
  reg_addr_1_IBUF : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr(1),
      O => reg_addr_1_INBUF
    );
  reg_addr_2_IBUF : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr(2),
      O => reg_addr_2_INBUF
    );
  reg_addr_3_IBUF : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr(3),
      O => reg_addr_3_INBUF
    );
  reg_addr_4_IBUF : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr(4),
      O => reg_addr_4_INBUF
    );
  data_out_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD220"
    )
    port map (
      I => data_out_10_O,
      O => data_out(10)
    );
  data_out_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD218"
    )
    port map (
      I => data_out_11_O,
      O => data_out(11)
    );
  data_out_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD217"
    )
    port map (
      I => data_out_12_O,
      O => data_out(12)
    );
  data_out_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => data_out_13_O,
      O => data_out(13)
    );
  data_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD232"
    )
    port map (
      I => data_out_0_O,
      O => data_out(0)
    );
  data_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD227"
    )
    port map (
      I => data_out_1_O,
      O => data_out(1)
    );
  data_out_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => data_out_14_O,
      O => data_out(14)
    );
  data_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD230"
    )
    port map (
      I => data_out_2_O,
      O => data_out(2)
    );
  data_out_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD213"
    )
    port map (
      I => data_out_15_O,
      O => data_out(15)
    );
  data_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD229"
    )
    port map (
      I => data_out_3_O,
      O => data_out(3)
    );
  data_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD5"
    )
    port map (
      I => data_out_4_O,
      O => data_out(4)
    );
  data_in_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD228",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(0),
      O => data_in_0_INBUF
    );
  data_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD226"
    )
    port map (
      I => data_out_5_O,
      O => data_out(5)
    );
  data_in_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD224",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(1),
      O => data_in_1_INBUF
    );
  data_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD225"
    )
    port map (
      I => data_out_6_O,
      O => data_out(6)
    );
  data_in_10_IBUF : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(10),
      O => data_in_10_INBUF
    );
  data_in_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD219",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(2),
      O => data_in_2_INBUF
    );
  latched_data_2 : X_FF
    generic map(
      LOC => "IPAD219",
      INIT => '0'
    )
    port map (
      I => data_in_2_IFF_IDDRIN_MUX_3793,
      CE => data_in_2_IFF_ICEINV_3795,
      CLK => data_in_2_IFF_ICLK1INV_3797,
      SET => GND,
      RST => GND,
      O => latched_data(2)
    );
  data_in_2_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD219",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_2_INBUF,
      O => data_in_2_IFF_IDDRIN_MUX_3793
    );
  data_in_2_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD219",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_2_IFF_ICLK1INV_3797
    );
  data_in_2_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD219",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_2_IFF_ICEINV_3795
    );
  data_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD223"
    )
    port map (
      I => data_out_7_O,
      O => data_out(7)
    );
  data_in_11_IBUF : X_BUF
    generic map(
      LOC => "PAD202",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(11),
      O => data_in_11_INBUF
    );
  latched_data_11 : X_FF
    generic map(
      LOC => "PAD202",
      INIT => '0'
    )
    port map (
      I => data_in_11_IFF_IDDRIN_MUX_3821,
      CE => data_in_11_IFF_ICEINV_3823,
      CLK => data_in_11_IFF_ICLK1INV_3825,
      SET => GND,
      RST => GND,
      O => latched_data(11)
    );
  data_in_11_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "PAD202",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_11_INBUF,
      O => data_in_11_IFF_IDDRIN_MUX_3821
    );
  data_in_11_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD202",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_11_IFF_ICLK1INV_3825
    );
  data_in_11_IFF_ICEINV : X_BUF
    generic map(
      LOC => "PAD202",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_11_IFF_ICEINV_3823
    );
  data_in_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD214",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(3),
      O => data_in_3_INBUF
    );
  latched_data_3 : X_FF
    generic map(
      LOC => "IPAD214",
      INIT => '0'
    )
    port map (
      I => data_in_3_IFF_IDDRIN_MUX_3841,
      CE => data_in_3_IFF_ICEINV_3843,
      CLK => data_in_3_IFF_ICLK1INV_3845,
      SET => GND,
      RST => GND,
      O => latched_data(3)
    );
  data_in_3_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD214",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_3_INBUF,
      O => data_in_3_IFF_IDDRIN_MUX_3841
    );
  data_in_3_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD214",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_3_IFF_ICLK1INV_3845
    );
  data_in_3_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD214",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_3_IFF_ICEINV_3843
    );
  data_out_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => data_out_8_O,
      O => data_out(8)
    );
  data_in_12_IBUF : X_BUF
    generic map(
      LOC => "PAD201",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(12),
      O => data_in_12_INBUF
    );
  latched_data_12 : X_FF
    generic map(
      LOC => "PAD201",
      INIT => '0'
    )
    port map (
      I => data_in_12_IFF_IDDRIN_MUX_3869,
      CE => data_in_12_IFF_ICEINV_3871,
      CLK => data_in_12_IFF_ICLK1INV_3873,
      SET => GND,
      RST => GND,
      O => latched_data(12)
    );
  data_in_12_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "PAD201",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_12_INBUF,
      O => data_in_12_IFF_IDDRIN_MUX_3869
    );
  data_in_12_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD201",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_12_IFF_ICLK1INV_3873
    );
  data_in_12_IFF_ICEINV : X_BUF
    generic map(
      LOC => "PAD201",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_12_IFF_ICEINV_3871
    );
  data_in_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD209",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(4),
      O => data_in_4_INBUF
    );
  latched_data_4 : X_FF
    generic map(
      LOC => "IPAD209",
      INIT => '0'
    )
    port map (
      I => data_in_4_IFF_IDDRIN_MUX_3889,
      CE => data_in_4_IFF_ICEINV_3891,
      CLK => data_in_4_IFF_ICLK1INV_3893,
      SET => GND,
      RST => GND,
      O => latched_data(4)
    );
  data_in_4_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD209",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_4_INBUF,
      O => data_in_4_IFF_IDDRIN_MUX_3889
    );
  data_in_4_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD209",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_4_IFF_ICLK1INV_3893
    );
  data_in_4_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD209",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_4_IFF_ICEINV_3891
    );
  data_out_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD221"
    )
    port map (
      I => data_out_9_O,
      O => data_out(9)
    );
  data_in_13_IBUF : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(13),
      O => data_in_13_INBUF
    );
  latched_data_13 : X_FF
    generic map(
      LOC => "PAD200",
      INIT => '0'
    )
    port map (
      I => data_in_13_IFF_IDDRIN_MUX_3917,
      CE => data_in_13_IFF_ICEINV_3919,
      CLK => data_in_13_IFF_ICLK1INV_3921,
      SET => GND,
      RST => GND,
      O => latched_data(13)
    );
  data_in_13_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_13_INBUF,
      O => data_in_13_IFF_IDDRIN_MUX_3917
    );
  data_in_13_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_13_IFF_ICLK1INV_3921
    );
  data_in_13_IFF_ICEINV : X_BUF
    generic map(
      LOC => "PAD200",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_13_IFF_ICEINV_3919
    );
  data_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD208",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(5),
      O => data_in_5_INBUF
    );
  latched_data_5 : X_FF
    generic map(
      LOC => "PAD208",
      INIT => '0'
    )
    port map (
      I => data_in_5_IFF_IDDRIN_MUX_3937,
      CE => data_in_5_IFF_ICEINV_3939,
      CLK => data_in_5_IFF_ICLK1INV_3941,
      SET => GND,
      RST => GND,
      O => latched_data(5)
    );
  data_in_5_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "PAD208",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_5_INBUF,
      O => data_in_5_IFF_IDDRIN_MUX_3937
    );
  data_in_5_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD208",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_5_IFF_ICLK1INV_3941
    );
  data_in_5_IFF_ICEINV : X_BUF
    generic map(
      LOC => "PAD208",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_5_IFF_ICEINV_3939
    );
  write_read_IBUF : X_BUF
    generic map(
      LOC => "IPAD199",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_read,
      O => write_read_INBUF
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  data_in_14_IBUF : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(14),
      O => data_in_14_INBUF
    );
  data_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD207",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(6),
      O => data_in_6_INBUF
    );
  latched_data_6 : X_FF
    generic map(
      LOC => "PAD207",
      INIT => '0'
    )
    port map (
      I => data_in_6_IFF_IDDRIN_MUX_3989,
      CE => data_in_6_IFF_ICEINV_3991,
      CLK => data_in_6_IFF_ICLK1INV_3993,
      SET => GND,
      RST => GND,
      O => latched_data(6)
    );
  data_in_6_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "PAD207",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_6_INBUF,
      O => data_in_6_IFF_IDDRIN_MUX_3989
    );
  data_in_6_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD207",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_6_IFF_ICLK1INV_3993
    );
  data_in_6_IFF_ICEINV : X_BUF
    generic map(
      LOC => "PAD207",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_6_IFF_ICEINV_3991
    );
  phy_addr_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD194",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr(0),
      O => phy_addr_0_INBUF
    );
  data_in_15_IBUF : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(15),
      O => data_in_15_INBUF
    );
  data_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD206",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(7),
      O => data_in_7_INBUF
    );
  phy_addr_1_IBUF : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr(1),
      O => phy_addr_1_INBUF
    );
  data_in_8_IBUF : X_BUF
    generic map(
      LOC => "PAD205",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(8),
      O => data_in_8_INBUF
    );
  phy_addr_2_IBUF : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr(2),
      O => phy_addr_2_INBUF
    );
  data_in_9_IBUF : X_BUF
    generic map(
      LOC => "IPAD204",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in(9),
      O => data_in_9_INBUF
    );
  phy_addr_3_IBUF : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr(3),
      O => phy_addr_3_INBUF
    );
  phy_addr_4_IBUF : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr(4),
      O => phy_addr_4_INBUF
    );
  busy_OBUF : X_OBUF
    generic map(
      LOC => "PAD41"
    )
    port map (
      I => busy_O,
      O => busy
    );
  clk_div_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X1Y10"
    )
    port map (
      I0 => clk_div_BUFG_I0_INV,
      I1 => GND,
      S => clk_div_BUFG_S_INVNOT,
      O => clk_div_1313
    );
  clk_div_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => clk_div_BUFG_S_INVNOT
    );
  clk_div_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X1Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div1,
      O => clk_div_BUFG_I0_INV
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  counter_or0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X48Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => counter_or0000_F5MUX_4178,
      O => counter_or0000
    );
  counter_or0000_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X48Y83"
    )
    port map (
      IA => counter_or00001,
      IB => counter_or0000_F,
      SEL => counter_or0000_BXINV_4167,
      O => counter_or0000_F5MUX_4178
    );
  counter_or0000_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X48Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => counter_or0000_BXINV_4167
    );
  Mtridata_MDIO_and0000135_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mtridata_MDIO_and0000135_F5MUX_4203,
      O => Mtridata_MDIO_and0000135
    );
  Mtridata_MDIO_and0000135_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y65"
    )
    port map (
      IA => N22,
      IB => N23,
      SEL => Mtridata_MDIO_and0000135_BXINV_4195,
      O => Mtridata_MDIO_and0000135_F5MUX_4203
    );
  Mtridata_MDIO_and0000135_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter(5),
      O => Mtridata_MDIO_and0000135_BXINV_4195
    );
  Mtridata_MDIO_and000028_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mtridata_MDIO_and000028_F5MUX_4228,
      O => Mtridata_MDIO_and000028
    );
  Mtridata_MDIO_and000028_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X20Y78"
    )
    port map (
      IA => Mtridata_MDIO_and0000282_4219,
      IB => Mtridata_MDIO_and0000281_4226,
      SEL => Mtridata_MDIO_and000028_BXINV_4221,
      O => Mtridata_MDIO_and000028_F5MUX_4228
    );
  Mtridata_MDIO_and000028_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => bit_counter(4),
      O => Mtridata_MDIO_and000028_BXINV_4221
    );
  read_send_data_10_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y64",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_10_and0000_4251,
      O => read_send_data_10_and0000_0
    );
  read_send_data_10_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X2Y64",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_0_cmp_lt0000_pack_1,
      O => read_send_data_0_cmp_lt0000
    );
  read_receive_data_0_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data_0_and0000_4275,
      O => read_receive_data_0_and0000_0
    );
  read_receive_data_0_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data_0_and0000_SW2_O_pack_1,
      O => read_receive_data_0_and0000_SW2_O
    );
  write_send_data_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_and0000_4299,
      O => write_send_data_and0000_0
    );
  write_send_data_and0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data_0_cmp_gt00001_pack_1,
      O => read_receive_data_0_cmp_gt00001_1316
    );
  write_send_data_not0001_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001,
      O => write_send_data_not0001_0
    );
  write_send_data_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => N3_pack_1,
      O => N3
    );
  write_send_data_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0051,
      O => write_send_data_11_DXMUX_4362
    );
  write_send_data_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0052,
      O => write_send_data_11_DYMUX_4348
    );
  write_send_data_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_11_SRINV_4339
    );
  write_send_data_11_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X0Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_11_CLKINVNOT
    );
  write_send_data_11_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y45",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_11_CEINV_4337
    );
  write_send_data_21_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0043,
      O => write_send_data_21_DXMUX_4404
    );
  write_send_data_21_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X7Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0044,
      O => write_send_data_21_DYMUX_4390
    );
  write_send_data_21_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_21_SRINV_4381
    );
  write_send_data_21_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X7Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_21_CLKINVNOT
    );
  write_send_data_21_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X7Y3",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_21_CEINV_4379
    );
  write_send_data_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0049,
      O => write_send_data_13_DXMUX_4446
    );
  write_send_data_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0050,
      O => write_send_data_13_DYMUX_4432
    );
  write_send_data_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_13_SRINV_4423
    );
  write_send_data_13_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X0Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_13_CLKINVNOT
    );
  write_send_data_13_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y40",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_13_CEINV_4421
    );
  read_send_data_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_1_mux0000,
      O => read_send_data_1_DXMUX_4488
    );
  read_send_data_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_0_mux0000,
      O => read_send_data_1_DYMUX_4474
    );
  read_send_data_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_1_SRINV_4466
    );
  read_send_data_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_1_CLKINVNOT
    );
  read_send_data_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_0_not0001_0,
      O => read_send_data_1_CEINV_4464
    );
  write_send_data_31_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0033,
      O => write_send_data_31_DXMUX_4530
    );
  write_send_data_31_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0034,
      O => write_send_data_31_DYMUX_4517
    );
  write_send_data_31_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_31_SRINV_4509
    );
  write_send_data_31_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X22Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_31_CLKINVNOT
    );
  write_send_data_31_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_31_CEINV_4507
    );
  write_send_data_23_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0041,
      O => write_send_data_23_DXMUX_4572
    );
  write_send_data_23_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0042,
      O => write_send_data_23_DYMUX_4558
    );
  write_send_data_23_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_23_SRINV_4549
    );
  write_send_data_23_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_23_CLKINVNOT
    );
  write_send_data_23_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y9",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_23_CEINV_4547
    );
  write_send_data_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0047,
      O => write_send_data_15_DXMUX_4614
    );
  write_send_data_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0048,
      O => write_send_data_15_DYMUX_4600
    );
  write_send_data_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_15_SRINV_4591
    );
  write_send_data_15_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_15_CLKINVNOT
    );
  write_send_data_15_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_15_CEINV_4589
    );
  read_send_data_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_3_mux0000,
      O => read_send_data_3_DXMUX_4656
    );
  read_send_data_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_2_mux0000,
      O => read_send_data_3_DYMUX_4642
    );
  read_send_data_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_3_SRINV_4633
    );
  read_send_data_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X0Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_3_CLKINVNOT
    );
  read_send_data_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_0_not0001_0,
      O => read_send_data_3_CEINV_4631
    );
  write_send_data_41_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0023,
      O => write_send_data_41_DXMUX_4698
    );
  write_send_data_41_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0024,
      O => write_send_data_41_DYMUX_4685
    );
  write_send_data_41_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_41_SRINV_4677
    );
  write_send_data_41_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X22Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_41_CLKINVNOT
    );
  write_send_data_41_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y48",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_41_CEINV_4675
    );
  write_send_data_33_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0031,
      O => write_send_data_33_DXMUX_4740
    );
  write_send_data_33_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0032,
      O => write_send_data_33_DYMUX_4727
    );
  write_send_data_33_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_33_SRINV_4719
    );
  write_send_data_33_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_33_CLKINVNOT
    );
  write_send_data_33_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_33_CEINV_4717
    );
  write_send_data_25_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0039,
      O => write_send_data_25_DXMUX_4782
    );
  write_send_data_25_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0040,
      O => write_send_data_25_DYMUX_4768
    );
  write_send_data_25_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_25_SRINV_4759
    );
  write_send_data_25_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_25_CLKINVNOT
    );
  write_send_data_25_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_25_CEINV_4757
    );
  write_send_data_17_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_index0001,
      O => write_send_data_17_DXMUX_4824
    );
  write_send_data_17_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_index0003,
      O => write_send_data_17_DYMUX_4811
    );
  write_send_data_17_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_17_SRINV_4803
    );
  write_send_data_17_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X12Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_17_CLKINVNOT
    );
  write_send_data_17_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_17_CEINV_4801
    );
  read_send_data_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_5_mux0000,
      O => read_send_data_5_DXMUX_4866
    );
  read_send_data_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_4_mux0000,
      O => read_send_data_5_DYMUX_4852
    );
  read_send_data_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_5_SRINV_4843
    );
  read_send_data_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_5_CLKINVNOT
    );
  read_send_data_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_0_not0001_0,
      O => read_send_data_5_CEINV_4841
    );
  write_send_data_51_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0013,
      O => write_send_data_51_DXMUX_4908
    );
  write_send_data_51_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0014,
      O => write_send_data_51_DYMUX_4895
    );
  write_send_data_51_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_51_SRINV_4887
    );
  write_send_data_51_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X21Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_51_CLKINVNOT
    );
  write_send_data_51_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_51_CEINV_4885
    );
  write_send_data_43_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0021,
      O => write_send_data_43_DXMUX_4950
    );
  write_send_data_43_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0022,
      O => write_send_data_43_DYMUX_4937
    );
  write_send_data_43_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_43_SRINV_4929
    );
  write_send_data_43_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X22Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_43_CLKINVNOT
    );
  write_send_data_43_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_43_CEINV_4927
    );
  write_send_data_35_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0029,
      O => write_send_data_35_DXMUX_4992
    );
  write_send_data_35_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0030,
      O => write_send_data_35_DYMUX_4979
    );
  write_send_data_35_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_35_SRINV_4971
    );
  write_send_data_35_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X21Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_35_CLKINVNOT
    );
  write_send_data_35_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y41",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_35_CEINV_4969
    );
  write_send_data_27_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0037,
      O => write_send_data_27_DXMUX_5034
    );
  write_send_data_27_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0038,
      O => write_send_data_27_DYMUX_5020
    );
  write_send_data_27_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_27_SRINV_5011
    );
  write_send_data_27_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X19Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_27_CLKINVNOT
    );
  write_send_data_27_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_27_CEINV_5009
    );
  write_send_data_mux00461 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X2Y14"
    )
    port map (
      ADR0 => latched_reg_addr(0),
      ADR1 => write_send_data(17),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => VCC,
      O => write_send_data_mux0046
    );
  write_send_data_mux00451 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X2Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => latched_reg_addr(1),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => write_send_data(18),
      O => write_send_data_mux0045
    );
  write_send_data_19_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0045,
      O => write_send_data_19_DXMUX_5076
    );
  write_send_data_19_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0046,
      O => write_send_data_19_DYMUX_5062
    );
  write_send_data_19_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_19_SRINV_5053
    );
  write_send_data_19_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_19_CLKINVNOT
    );
  write_send_data_19_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_19_CEINV_5051
    );
  read_send_data_7_mux00001 : X_LUT4
    generic map(
      INIT => X"F0CC",
      LOC => "SLICE_X1Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => read_send_data(6),
      ADR2 => phy_addr_2_IBUF_1391,
      ADR3 => read_send_data_11_not0001_inv,
      O => read_send_data_7_mux0000
    );
  read_send_data_6_mux00001 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X1Y28"
    )
    port map (
      ADR0 => read_send_data(5),
      ADR1 => read_send_data_11_not0001_inv,
      ADR2 => phy_addr_1_IBUF_1386,
      ADR3 => VCC,
      O => read_send_data_6_mux0000
    );
  read_send_data_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_7_mux0000,
      O => read_send_data_7_DXMUX_5118
    );
  read_send_data_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_6_mux0000,
      O => read_send_data_7_DYMUX_5104
    );
  read_send_data_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_7_SRINV_5095
    );
  read_send_data_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_7_CLKINVNOT
    );
  read_send_data_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_0_not0001_0,
      O => read_send_data_7_CEINV_5093
    );
  write_send_data_61_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0003,
      O => write_send_data_61_DXMUX_5160
    );
  write_send_data_61_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0004,
      O => write_send_data_61_DYMUX_5147
    );
  write_send_data_61_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_61_SRINV_5139
    );
  write_send_data_61_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X17Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_61_CLKINVNOT
    );
  write_send_data_61_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y43",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_61_CEINV_5137
    );
  write_send_data_53_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0011,
      O => write_send_data_53_DXMUX_5202
    );
  write_send_data_53_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0012,
      O => write_send_data_53_DYMUX_5189
    );
  write_send_data_53_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_53_SRINV_5181
    );
  write_send_data_53_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X22Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_53_CLKINVNOT
    );
  write_send_data_53_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_53_CEINV_5179
    );
  write_send_data_mux00201 : X_LUT4
    generic map(
      INIT => X"F0F2",
      LOC => "SLICE_X21Y53"
    )
    port map (
      ADR0 => N3,
      ADR1 => bit_counter(6),
      ADR2 => write_send_data(43),
      ADR3 => read_receive_data_0_cmp_gt00001_1316,
      O => write_send_data_mux0020
    );
  write_send_data_44 : X_SFF
    generic map(
      LOC => "SLICE_X21Y53",
      INIT => '0'
    )
    port map (
      I => write_send_data_45_DYMUX_5231,
      CE => write_send_data_45_CEINV_5221,
      CLK => write_send_data_45_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_45_SRINV_5223,
      O => write_send_data(44)
    );
  write_send_data_mux00191 : X_LUT4
    generic map(
      INIT => X"FF02",
      LOC => "SLICE_X21Y53"
    )
    port map (
      ADR0 => N3,
      ADR1 => bit_counter(6),
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => write_send_data(44),
      O => write_send_data_mux0019
    );
  write_send_data_45 : X_SFF
    generic map(
      LOC => "SLICE_X21Y53",
      INIT => '0'
    )
    port map (
      I => write_send_data_45_DXMUX_5244,
      CE => write_send_data_45_CEINV_5221,
      CLK => write_send_data_45_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_45_SRINV_5223,
      O => write_send_data(45)
    );
  write_send_data_45_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0019,
      O => write_send_data_45_DXMUX_5244
    );
  write_send_data_45_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0020,
      O => write_send_data_45_DYMUX_5231
    );
  write_send_data_45_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_45_SRINV_5223
    );
  write_send_data_45_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X21Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_45_CLKINVNOT
    );
  write_send_data_45_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y53",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_45_CEINV_5221
    );
  write_send_data_mux00281 : X_LUT4
    generic map(
      INIT => X"AAAE",
      LOC => "SLICE_X20Y47"
    )
    port map (
      ADR0 => write_send_data(35),
      ADR1 => N3,
      ADR2 => bit_counter(6),
      ADR3 => read_receive_data_0_cmp_gt00001_1316,
      O => write_send_data_mux0028
    );
  write_send_data_36 : X_SFF
    generic map(
      LOC => "SLICE_X20Y47",
      INIT => '0'
    )
    port map (
      I => write_send_data_37_DYMUX_5273,
      CE => write_send_data_37_CEINV_5263,
      CLK => write_send_data_37_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_37_SRINV_5265,
      O => write_send_data(36)
    );
  write_send_data_mux00271 : X_LUT4
    generic map(
      INIT => X"FF02",
      LOC => "SLICE_X20Y47"
    )
    port map (
      ADR0 => N3,
      ADR1 => read_receive_data_0_cmp_gt00001_1316,
      ADR2 => bit_counter(6),
      ADR3 => write_send_data(36),
      O => write_send_data_mux0027
    );
  write_send_data_37 : X_SFF
    generic map(
      LOC => "SLICE_X20Y47",
      INIT => '0'
    )
    port map (
      I => write_send_data_37_DXMUX_5286,
      CE => write_send_data_37_CEINV_5263,
      CLK => write_send_data_37_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_37_SRINV_5265,
      O => write_send_data(37)
    );
  write_send_data_37_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0027,
      O => write_send_data_37_DXMUX_5286
    );
  write_send_data_37_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0028,
      O => write_send_data_37_DYMUX_5273
    );
  write_send_data_37_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_37_SRINV_5265
    );
  write_send_data_37_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X20Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_37_CLKINVNOT
    );
  write_send_data_37_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y47",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_37_CEINV_5263
    );
  write_send_data_mux00361 : X_LUT4
    generic map(
      INIT => X"F1F0",
      LOC => "SLICE_X22Y30"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => bit_counter(6),
      ADR2 => write_send_data(27),
      ADR3 => N3,
      O => write_send_data_mux0036
    );
  write_send_data_28 : X_SFF
    generic map(
      LOC => "SLICE_X22Y30",
      INIT => '0'
    )
    port map (
      I => write_send_data_29_DYMUX_5315,
      CE => write_send_data_29_CEINV_5305,
      CLK => write_send_data_29_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_29_SRINV_5307,
      O => write_send_data(28)
    );
  write_send_data_mux00351 : X_LUT4
    generic map(
      INIT => X"FB00",
      LOC => "SLICE_X22Y30"
    )
    port map (
      ADR0 => bit_counter(6),
      ADR1 => N3,
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => write_send_data(28),
      O => write_send_data_mux0035
    );
  write_send_data_29 : X_SFF
    generic map(
      LOC => "SLICE_X22Y30",
      INIT => '0'
    )
    port map (
      I => write_send_data_29_DXMUX_5328,
      CE => write_send_data_29_CEINV_5305,
      CLK => write_send_data_29_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_29_SRINV_5307,
      O => write_send_data(29)
    );
  write_send_data_29_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0035,
      O => write_send_data_29_DXMUX_5328
    );
  write_send_data_29_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0036,
      O => write_send_data_29_DYMUX_5315
    );
  write_send_data_29_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_29_SRINV_5307
    );
  write_send_data_29_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X22Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_29_CLKINVNOT
    );
  write_send_data_29_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_29_CEINV_5305
    );
  read_send_data_8_mux00001 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X2Y24"
    )
    port map (
      ADR0 => read_send_data(7),
      ADR1 => phy_addr_3_IBUF_1390,
      ADR2 => VCC,
      ADR3 => read_send_data_11_not0001_inv,
      O => read_send_data_8_mux0000
    );
  read_send_data_8 : X_SFF
    generic map(
      LOC => "SLICE_X2Y24",
      INIT => '0'
    )
    port map (
      I => read_send_data_9_DYMUX_5356,
      CE => read_send_data_9_CEINV_5345,
      CLK => read_send_data_9_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_send_data_9_SRINV_5347,
      O => read_send_data(8)
    );
  read_send_data_9_mux00001 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X2Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => read_send_data_11_not0001_inv,
      ADR2 => phy_addr_4_IBUF_1394,
      ADR3 => read_send_data(8),
      O => read_send_data_9_mux0000
    );
  read_send_data_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_9_mux0000,
      O => read_send_data_9_DXMUX_5370
    );
  read_send_data_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X2Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_8_mux0000,
      O => read_send_data_9_DYMUX_5356
    );
  read_send_data_9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => read_send_data_9_SRINV_5347
    );
  read_send_data_9_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X2Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => read_send_data_9_CLKINVNOT
    );
  read_send_data_9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X2Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_send_data_0_not0001_0,
      O => read_send_data_9_CEINV_5345
    );
  write_send_data_mux00011 : X_LUT4
    generic map(
      INIT => X"AAAE",
      LOC => "SLICE_X15Y42"
    )
    port map (
      ADR0 => write_send_data(62),
      ADR1 => N3,
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => bit_counter(6),
      O => write_send_data_mux0001
    );
  write_send_data_mux00021 : X_LUT4
    generic map(
      INIT => X"CCCE",
      LOC => "SLICE_X15Y42"
    )
    port map (
      ADR0 => N3,
      ADR1 => write_send_data(61),
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => bit_counter(6),
      O => write_send_data_mux0002
    );
  write_send_data_63_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0001,
      O => write_send_data_63_DXMUX_5412
    );
  write_send_data_63_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0002,
      O => write_send_data_63_DYMUX_5399
    );
  write_send_data_63_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_63_SRINV_5391
    );
  write_send_data_63_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X15Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_63_CLKINVNOT
    );
  write_send_data_63_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y42",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_63_CEINV_5389
    );
  write_send_data_55_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0009,
      O => write_send_data_55_DXMUX_5454
    );
  write_send_data_55_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0010,
      O => write_send_data_55_DYMUX_5441
    );
  write_send_data_55_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_55_SRINV_5433
    );
  write_send_data_55_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X20Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_55_CLKINVNOT
    );
  write_send_data_55_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y54",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_55_CEINV_5431
    );
  write_send_data_47_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0017,
      O => write_send_data_47_DXMUX_5496
    );
  write_send_data_47_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0018,
      O => write_send_data_47_DYMUX_5483
    );
  write_send_data_47_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_47_SRINV_5475
    );
  write_send_data_47_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X21Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_47_CLKINVNOT
    );
  write_send_data_47_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_47_CEINV_5473
    );
  write_send_data_39_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0025,
      O => write_send_data_39_DXMUX_5538
    );
  write_send_data_39_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0026,
      O => write_send_data_39_DYMUX_5525
    );
  write_send_data_39_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_39_SRINV_5517
    );
  write_send_data_39_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X20Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_39_CLKINVNOT
    );
  write_send_data_39_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y49",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_39_CEINV_5515
    );
  write_send_data_57_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0007,
      O => write_send_data_57_DXMUX_5580
    );
  write_send_data_57_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0008,
      O => write_send_data_57_DYMUX_5567
    );
  write_send_data_57_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_57_SRINV_5559
    );
  write_send_data_57_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X19Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_57_CLKINVNOT
    );
  write_send_data_57_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_57_CEINV_5557
    );
  write_send_data_49_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0015,
      O => write_send_data_49_DXMUX_5622
    );
  write_send_data_49_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_mux0016,
      O => write_send_data_49_DYMUX_5609
    );
  write_send_data_49_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => write_send_data_49_SRINV_5601
    );
  write_send_data_49_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X20Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_div_1313,
      O => write_send_data_49_CLKINVNOT
    );
  write_send_data_49_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y55",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_not0001_0,
      O => write_send_data_49_CEINV_5599
    );
  read_receive_data_8 : X_SFF
    generic map(
      LOC => "SLICE_X2Y77",
      INIT => '0'
    )
    port map (
      I => read_receive_data_9_DYMUX_1886,
      CE => read_receive_data_9_CEINV_1882,
      CLK => read_receive_data_9_CLKINV_1883,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_9_SRINV_1884,
      O => read_receive_data(8)
    );
  read_send_data_27_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X25Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => read_send_data(27),
      O => read_send_data_27_rt_2900
    );
  latched_data_1 : X_FF
    generic map(
      LOC => "IPAD224",
      INIT => '0'
    )
    port map (
      I => data_in_1_IFF_IDDRIN_MUX_3745,
      CE => data_in_1_IFF_ICEINV_3747,
      CLK => data_in_1_IFF_ICLK1INV_3749,
      SET => GND,
      RST => GND,
      O => latched_data(1)
    );
  data_in_1_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD224",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_1_INBUF,
      O => data_in_1_IFF_IDDRIN_MUX_3745
    );
  data_in_1_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD224",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_1_IFF_ICLK1INV_3749
    );
  data_in_1_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD224",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_1_IFF_ICEINV_3747
    );
  latched_data_10 : X_FF
    generic map(
      LOC => "PAD203",
      INIT => '0'
    )
    port map (
      I => data_in_10_IFF_IDDRIN_MUX_3773,
      CE => data_in_10_IFF_ICEINV_3775,
      CLK => data_in_10_IFF_ICLK1INV_3777,
      SET => GND,
      RST => GND,
      O => latched_data(10)
    );
  data_in_10_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_10_INBUF,
      O => data_in_10_IFF_IDDRIN_MUX_3773
    );
  data_in_10_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_10_IFF_ICLK1INV_3777
    );
  data_in_10_IFF_ICEINV : X_BUF
    generic map(
      LOC => "PAD203",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_10_IFF_ICEINV_3775
    );
  latched_data_14 : X_FF
    generic map(
      LOC => "PAD197",
      INIT => '0'
    )
    port map (
      I => data_in_14_IFF_IDDRIN_MUX_3969,
      CE => data_in_14_IFF_ICEINV_3971,
      CLK => data_in_14_IFF_ICLK1INV_3973,
      SET => GND,
      RST => GND,
      O => latched_data(14)
    );
  data_in_14_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_14_INBUF,
      O => data_in_14_IFF_IDDRIN_MUX_3969
    );
  data_in_14_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_14_IFF_ICLK1INV_3973
    );
  data_in_14_IFF_ICEINV : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_14_IFF_ICEINV_3971
    );
  write_send_data_53 : X_SFF
    generic map(
      LOC => "SLICE_X22Y55",
      INIT => '0'
    )
    port map (
      I => write_send_data_53_DXMUX_5202,
      CE => write_send_data_53_CEINV_5179,
      CLK => write_send_data_53_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_53_SRINV_5181,
      O => write_send_data(53)
    );
  write_send_data_mux00121 : X_LUT4
    generic map(
      INIT => X"CCCE",
      LOC => "SLICE_X22Y55"
    )
    port map (
      ADR0 => N3,
      ADR1 => write_send_data(51),
      ADR2 => bit_counter(6),
      ADR3 => read_receive_data_0_cmp_gt00001_1316,
      O => write_send_data_mux0012
    );
  write_send_data_52 : X_SFF
    generic map(
      LOC => "SLICE_X22Y55",
      INIT => '0'
    )
    port map (
      I => write_send_data_53_DYMUX_5189,
      CE => write_send_data_53_CEINV_5179,
      CLK => write_send_data_53_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_53_SRINV_5181,
      O => write_send_data(52)
    );
  write_send_data_mux00111 : X_LUT4
    generic map(
      INIT => X"FF04",
      LOC => "SLICE_X22Y55"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => N3,
      ADR2 => bit_counter(6),
      ADR3 => write_send_data(52),
      O => write_send_data_mux0011
    );
  write_send_data_61 : X_SFF
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => '0'
    )
    port map (
      I => write_send_data_61_DXMUX_5160,
      CE => write_send_data_61_CEINV_5137,
      CLK => write_send_data_61_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_61_SRINV_5139,
      O => write_send_data(61)
    );
  write_send_data_mux00041 : X_LUT4
    generic map(
      INIT => X"FF04",
      LOC => "SLICE_X17Y43"
    )
    port map (
      ADR0 => bit_counter(6),
      ADR1 => N3,
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => write_send_data(59),
      O => write_send_data_mux0004
    );
  write_send_data_60 : X_SFF
    generic map(
      LOC => "SLICE_X17Y43",
      INIT => '0'
    )
    port map (
      I => write_send_data_61_DYMUX_5147,
      CE => write_send_data_61_CEINV_5137,
      CLK => write_send_data_61_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_61_SRINV_5139,
      O => write_send_data(60)
    );
  write_send_data_mux00031 : X_LUT4
    generic map(
      INIT => X"FF04",
      LOC => "SLICE_X17Y43"
    )
    port map (
      ADR0 => bit_counter(6),
      ADR1 => N3,
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => write_send_data(60),
      O => write_send_data_mux0003
    );
  read_send_data_7 : X_SFF
    generic map(
      LOC => "SLICE_X1Y28",
      INIT => '0'
    )
    port map (
      I => read_send_data_7_DXMUX_5118,
      CE => read_send_data_7_CEINV_5093,
      CLK => read_send_data_7_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_send_data_7_SRINV_5095,
      O => read_send_data(7)
    );
  read_send_data_6 : X_SFF
    generic map(
      LOC => "SLICE_X1Y28",
      INIT => '0'
    )
    port map (
      I => read_send_data_7_DYMUX_5104,
      CE => read_send_data_7_CEINV_5093,
      CLK => read_send_data_7_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_send_data_7_SRINV_5095,
      O => read_send_data(6)
    );
  write_send_data_19 : X_SFF
    generic map(
      LOC => "SLICE_X2Y14",
      INIT => '0'
    )
    port map (
      I => write_send_data_19_DXMUX_5076,
      CE => write_send_data_19_CEINV_5051,
      CLK => write_send_data_19_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_19_SRINV_5053,
      O => write_send_data(19)
    );
  write_send_data_18 : X_SFF
    generic map(
      LOC => "SLICE_X2Y14",
      INIT => '0'
    )
    port map (
      I => write_send_data_19_DYMUX_5062,
      CE => write_send_data_19_CEINV_5051,
      CLK => write_send_data_19_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_19_SRINV_5053,
      O => write_send_data(18)
    );
  write_send_data_mux00101 : X_LUT4
    generic map(
      INIT => X"CDCC",
      LOC => "SLICE_X20Y54"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => write_send_data(53),
      ADR2 => bit_counter(6),
      ADR3 => N3,
      O => write_send_data_mux0010
    );
  write_send_data_63 : X_SFF
    generic map(
      LOC => "SLICE_X15Y42",
      INIT => '0'
    )
    port map (
      I => write_send_data_63_DXMUX_5412,
      CE => write_send_data_63_CEINV_5389,
      CLK => write_send_data_63_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_63_SRINV_5391,
      O => write_send_data(63)
    );
  write_send_data_62 : X_SFF
    generic map(
      LOC => "SLICE_X15Y42",
      INIT => '0'
    )
    port map (
      I => write_send_data_63_DYMUX_5399,
      CE => write_send_data_63_CEINV_5389,
      CLK => write_send_data_63_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_63_SRINV_5391,
      O => write_send_data(62)
    );
  read_send_data_9 : X_SFF
    generic map(
      LOC => "SLICE_X2Y24",
      INIT => '0'
    )
    port map (
      I => read_send_data_9_DXMUX_5370,
      CE => read_send_data_9_CEINV_5345,
      CLK => read_send_data_9_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_send_data_9_SRINV_5347,
      O => read_send_data(9)
    );
  latched_reg_addr_3 : X_FF
    generic map(
      LOC => "SLICE_X3Y8",
      INIT => '0'
    )
    port map (
      I => latched_reg_addr_3_DXMUX_1934,
      CE => latched_reg_addr_3_CEINV_1925,
      CLK => latched_reg_addr_3_CLKINV_1926,
      SET => GND,
      RST => GND,
      O => latched_reg_addr(3)
    );
  latched_reg_addr_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y8",
      INIT => '0'
    )
    port map (
      I => latched_reg_addr_4_DYMUX_1946,
      CE => latched_reg_addr_4_CEINV_1943,
      CLK => latched_reg_addr_4_CLKINV_1944,
      SET => GND,
      RST => GND,
      O => latched_reg_addr(4)
    );
  write_send_data_mux00061 : X_LUT4
    generic map(
      INIT => X"ABAA",
      LOC => "SLICE_X19Y47"
    )
    port map (
      ADR0 => write_send_data(57),
      ADR1 => bit_counter(6),
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => N3,
      O => write_send_data_mux0006
    );
  write_send_data_58 : X_SFF
    generic map(
      LOC => "SLICE_X19Y47",
      INIT => '0'
    )
    port map (
      I => write_send_data_59_DYMUX_1565,
      CE => write_send_data_59_CEINV_1555,
      CLK => write_send_data_59_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_59_SRINV_1557,
      O => write_send_data(58)
    );
  write_send_data_mux00051 : X_LUT4
    generic map(
      INIT => X"FF04",
      LOC => "SLICE_X19Y47"
    )
    port map (
      ADR0 => bit_counter(6),
      ADR1 => N3,
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => write_send_data(58),
      O => write_send_data_mux0005
    );
  write_send_data_59 : X_SFF
    generic map(
      LOC => "SLICE_X19Y47",
      INIT => '0'
    )
    port map (
      I => write_send_data_59_DXMUX_1578,
      CE => write_send_data_59_CEINV_1555,
      CLK => write_send_data_59_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_59_SRINV_1557,
      O => write_send_data(59)
    );
  write_send_data_mux00621 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X3Y75"
    )
    port map (
      ADR0 => bit_counter(6),
      ADR1 => read_receive_data_0_cmp_gt00001_1316,
      ADR2 => latched_data(0),
      ADR3 => N3,
      O => write_send_data_mux0062
    );
  write_send_data_0 : X_SFF
    generic map(
      LOC => "SLICE_X3Y75",
      INIT => '0'
    )
    port map (
      I => write_send_data_0_DYMUX_1607,
      CE => write_send_data_0_CEINV_1597,
      CLK => write_send_data_0_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_0_SRINV_1599,
      O => write_send_data(0)
    );
  read_send_data_10_or00001 : X_LUT4
    generic map(
      INIT => X"F0F2",
      LOC => "SLICE_X3Y75"
    )
    port map (
      ADR0 => N3,
      ADR1 => read_receive_data_0_cmp_gt00001_1316,
      ADR2 => reset_IBUF_1314,
      ADR3 => bit_counter(6),
      O => read_send_data_10_or0000
    );
  write_send_data_mux00601 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X1Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => latched_data(2),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => write_send_data(1),
      O => write_send_data_mux0060
    );
  write_send_data_2 : X_SFF
    generic map(
      LOC => "SLICE_X1Y65",
      INIT => '0'
    )
    port map (
      I => write_send_data_3_DYMUX_1642,
      CE => write_send_data_3_CEINV_1631,
      CLK => write_send_data_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_3_SRINV_1633,
      O => write_send_data(2)
    );
  write_send_data_mux00591 : X_LUT4
    generic map(
      INIT => X"F0AA",
      LOC => "SLICE_X1Y65"
    )
    port map (
      ADR0 => write_send_data(2),
      ADR1 => VCC,
      ADR2 => latched_data(3),
      ADR3 => read_send_data_11_not0001_inv,
      O => write_send_data_mux0059
    );
  write_send_data_3 : X_SFF
    generic map(
      LOC => "SLICE_X1Y65",
      INIT => '0'
    )
    port map (
      I => write_send_data_3_DXMUX_1656,
      CE => write_send_data_3_CEINV_1631,
      CLK => write_send_data_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_3_SRINV_1633,
      O => write_send_data(3)
    );
  write_send_data_mux00581 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X0Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => latched_data(4),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => write_send_data(3),
      O => write_send_data_mux0058
    );
  write_send_data_4 : X_SFF
    generic map(
      LOC => "SLICE_X0Y54",
      INIT => '0'
    )
    port map (
      I => write_send_data_5_DYMUX_1684,
      CE => write_send_data_5_CEINV_1673,
      CLK => write_send_data_5_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_5_SRINV_1675,
      O => write_send_data(4)
    );
  write_send_data_mux00571 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X0Y54"
    )
    port map (
      ADR0 => VCC,
      ADR1 => latched_data(5),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => write_send_data(4),
      O => write_send_data_mux0057
    );
  write_send_data_5 : X_SFF
    generic map(
      LOC => "SLICE_X0Y54",
      INIT => '0'
    )
    port map (
      I => write_send_data_5_DXMUX_1698,
      CE => write_send_data_5_CEINV_1673,
      CLK => write_send_data_5_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_5_SRINV_1675,
      O => write_send_data(5)
    );
  write_send_data_mux00561 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X0Y51"
    )
    port map (
      ADR0 => read_send_data_11_not0001_inv,
      ADR1 => write_send_data(5),
      ADR2 => latched_data(6),
      ADR3 => VCC,
      O => write_send_data_mux0056
    );
  write_send_data_6 : X_SFF
    generic map(
      LOC => "SLICE_X0Y51",
      INIT => '0'
    )
    port map (
      I => write_send_data_7_DYMUX_1726,
      CE => write_send_data_7_CEINV_1715,
      CLK => write_send_data_7_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_7_SRINV_1717,
      O => write_send_data(6)
    );
  write_send_data_mux00551 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X0Y51"
    )
    port map (
      ADR0 => VCC,
      ADR1 => latched_data(7),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => write_send_data(6),
      O => write_send_data_mux0055
    );
  write_send_data_7 : X_SFF
    generic map(
      LOC => "SLICE_X0Y51",
      INIT => '0'
    )
    port map (
      I => write_send_data_7_DXMUX_1740,
      CE => write_send_data_7_CEINV_1715,
      CLK => write_send_data_7_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_7_SRINV_1717,
      O => write_send_data(7)
    );
  write_send_data_mux00541 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X0Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => write_send_data(7),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => latched_data(8),
      O => write_send_data_mux0054
    );
  write_send_data_8 : X_SFF
    generic map(
      LOC => "SLICE_X0Y48",
      INIT => '0'
    )
    port map (
      I => write_send_data_9_DYMUX_1768,
      CE => write_send_data_9_CEINV_1757,
      CLK => write_send_data_9_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_9_SRINV_1759,
      O => write_send_data(8)
    );
  write_send_data_mux00531 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X0Y48"
    )
    port map (
      ADR0 => VCC,
      ADR1 => latched_data(9),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => write_send_data(8),
      O => write_send_data_mux0053
    );
  write_send_data_9 : X_SFF
    generic map(
      LOC => "SLICE_X0Y48",
      INIT => '0'
    )
    port map (
      I => write_send_data_9_DXMUX_1782,
      CE => write_send_data_9_CEINV_1757,
      CLK => write_send_data_9_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_9_SRINV_1759,
      O => write_send_data(9)
    );
  Mtridata_MDIO_mux00001 : X_LUT4
    generic map(
      INIT => X"D8F0",
      LOC => "SLICE_X2Y56"
    )
    port map (
      ADR0 => latched_write_read_1343,
      ADR1 => write_send_data(63),
      ADR2 => read_send_data(45),
      ADR3 => Mtridata_MDIO_and0000135,
      O => Mtridata_MDIO_mux0000
    );
  Mtridata_MDIO : X_FF
    generic map(
      LOC => "SLICE_X2Y56",
      INIT => '0'
    )
    port map (
      I => Mtridata_MDIO_DYMUX_1805,
      CE => VCC,
      CLK => Mtridata_MDIO_CLKINV_1797,
      SET => GND,
      RST => GND,
      O => Mtridata_MDIO_1348
    );
  Mtridata_MDIO_and0000146 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "SLICE_X2Y56"
    )
    port map (
      ADR0 => latched_write_read_1343,
      ADR1 => Mtridata_MDIO_and0000135,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Mtridata_MDIO_and0000
    );
  Mtrien_MDIO_mux0000_norst : X_LUT4
    generic map(
      INIT => X"F7F5",
      LOC => "SLICE_X3Y57"
    )
    port map (
      ADR0 => read_send_data_0_cmp_lt0000,
      ADR1 => read_receive_data_0_cmp_gt00001_1316,
      ADR2 => latched_write_read_1343,
      ADR3 => N6_0,
      O => Mtrien_MDIO_mux0000_norst_1836
    );
  Mtrien_MDIO : X_SFF
    generic map(
      LOC => "SLICE_X3Y57",
      INIT => '0'
    )
    port map (
      I => Mtrien_MDIO_DYMUX_1839,
      CE => VCC,
      CLK => Mtrien_MDIO_CLKINV_1830,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Mtrien_MDIO_SRINV_1831,
      O => Mtrien_MDIO_1353
    );
  read_send_data_0_not00011 : X_LUT4
    generic map(
      INIT => X"FF02",
      LOC => "SLICE_X3Y57"
    )
    port map (
      ADR0 => N3,
      ADR1 => read_receive_data_0_cmp_gt00001_1316,
      ADR2 => bit_counter(6),
      ADR3 => read_send_data_10_and0000_0,
      O => read_send_data_0_not0001
    );
  read_receive_data_6 : X_SFF
    generic map(
      LOC => "SLICE_X2Y80",
      INIT => '0'
    )
    port map (
      I => read_receive_data_7_DYMUX_1862,
      CE => read_receive_data_7_CEINV_1858,
      CLK => read_receive_data_7_CLKINV_1859,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_7_SRINV_1860,
      O => read_receive_data(6)
    );
  read_receive_data_7 : X_SFF
    generic map(
      LOC => "SLICE_X2Y80",
      INIT => '0'
    )
    port map (
      I => read_receive_data_7_DXMUX_1869,
      CE => read_receive_data_7_CEINV_1858,
      CLK => read_receive_data_7_CLKINV_1859,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_7_SRINV_1860,
      O => read_receive_data(7)
    );
  read_receive_data_0_cmp_gt00001_1 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X14Y81"
    )
    port map (
      ADR0 => bit_counter(2),
      ADR1 => bit_counter(1),
      ADR2 => bit_counter(0),
      ADR3 => bit_counter(3),
      O => read_receive_data_0_cmp_gt000011
    );
  read_send_data_0_cmp_lt0000134 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X3Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => bit_counter(6),
      ADR2 => VCC,
      ADR3 => bit_counter(7),
      O => read_send_data_0_cmp_lt0000134_1989
    );
  Mtrien_MDIO_mux0000_norst_SW0 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X3Y65"
    )
    port map (
      ADR0 => bit_counter(4),
      ADR1 => bit_counter(6),
      ADR2 => bit_counter(5),
      ADR3 => bit_counter(7),
      O => N6
    );
  write_send_data_and0000_SW0 : X_LUT4
    generic map(
      INIT => X"0055",
      LOC => "SLICE_X13Y78"
    )
    port map (
      ADR0 => bit_counter(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => bit_counter(5),
      O => N8
    );
  read_send_data_10_and0000_SW0 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X13Y78"
    )
    port map (
      ADR0 => bit_counter(4),
      ADR1 => bit_counter(5),
      ADR2 => VCC,
      ADR3 => bit_counter(7),
      O => N10
    );
  busy_in_cmp_eq0000_SW0 : X_LUT4
    generic map(
      INIT => X"7F7F",
      LOC => "SLICE_X21Y78"
    )
    port map (
      ADR0 => bit_counter(6),
      ADR1 => bit_counter(0),
      ADR2 => N3,
      ADR3 => VCC,
      O => N4
    );
  Mtridata_MDIO_and000072_SW0 : X_LUT4
    generic map(
      INIT => X"FFC0",
      LOC => "SLICE_X21Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => bit_counter(0),
      ADR2 => bit_counter(4),
      ADR3 => Mtridata_MDIO_and000028,
      O => N20
    );
  latched_phy_addr_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => '0'
    )
    port map (
      I => latched_phy_addr_1_DYMUX_2056,
      CE => latched_phy_addr_1_CEINV_2053,
      CLK => latched_phy_addr_1_CLKINV_2054,
      SET => GND,
      RST => GND,
      O => latched_phy_addr(0)
    );
  latched_phy_addr_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => '0'
    )
    port map (
      I => latched_phy_addr_1_DXMUX_2062,
      CE => latched_phy_addr_1_CEINV_2053,
      CLK => latched_phy_addr_1_CLKINV_2054,
      SET => GND,
      RST => GND,
      O => latched_phy_addr(1)
    );
  latched_phy_addr_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      I => latched_phy_addr_3_DYMUX_2076,
      CE => latched_phy_addr_3_CEINV_2073,
      CLK => latched_phy_addr_3_CLKINV_2074,
      SET => GND,
      RST => GND,
      O => latched_phy_addr(2)
    );
  latched_phy_addr_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      I => latched_phy_addr_3_DXMUX_2082,
      CE => latched_phy_addr_3_CEINV_2073,
      CLK => latched_phy_addr_3_CLKINV_2074,
      SET => GND,
      RST => GND,
      O => latched_phy_addr(3)
    );
  latched_phy_addr_4 : X_FF
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => '0'
    )
    port map (
      I => latched_phy_addr_4_DYMUX_2094,
      CE => latched_phy_addr_4_CEINV_2091,
      CLK => latched_phy_addr_4_CLKINV_2092,
      SET => GND,
      RST => GND,
      O => latched_phy_addr(4)
    );
  Mtridata_MDC : X_FF
    generic map(
      LOC => "SLICE_X12Y91",
      INIT => '0'
    )
    port map (
      I => Mtridata_MDC_DYMUX_2104,
      CE => VCC,
      CLK => Mtridata_MDC_CLKINV_2102,
      SET => GND,
      RST => GND,
      O => Mtridata_MDC_1397
    );
  read_receive_data_10 : X_SFF
    generic map(
      LOC => "SLICE_X2Y73",
      INIT => '0'
    )
    port map (
      I => read_receive_data_11_DYMUX_2119,
      CE => read_receive_data_11_CEINV_2115,
      CLK => read_receive_data_11_CLKINV_2116,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_11_SRINV_2117,
      O => read_receive_data(10)
    );
  read_receive_data_11 : X_SFF
    generic map(
      LOC => "SLICE_X2Y73",
      INIT => '0'
    )
    port map (
      I => read_receive_data_11_DXMUX_2126,
      CE => read_receive_data_11_CEINV_2115,
      CLK => read_receive_data_11_CLKINV_2116,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_11_SRINV_2117,
      O => read_receive_data(11)
    );
  read_receive_data_12 : X_SFF
    generic map(
      LOC => "SLICE_X3Y73",
      INIT => '0'
    )
    port map (
      I => read_receive_data_13_DYMUX_2143,
      CE => read_receive_data_13_CEINV_2139,
      CLK => read_receive_data_13_CLKINV_2140,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_13_SRINV_2141,
      O => read_receive_data(12)
    );
  read_receive_data_13 : X_SFF
    generic map(
      LOC => "SLICE_X3Y73",
      INIT => '0'
    )
    port map (
      I => read_receive_data_13_DXMUX_2150,
      CE => read_receive_data_13_CEINV_2139,
      CLK => read_receive_data_13_CLKINV_2140,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_13_SRINV_2141,
      O => read_receive_data(13)
    );
  bit_counter_6_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y80",
      INIT => '0'
    )
    port map (
      I => bit_counter_6_1_DYMUX_2163,
      CE => VCC,
      CLK => bit_counter_6_1_CLKINVNOT,
      SET => GND,
      RST => bit_counter_6_1_FFY_RSTAND_2168,
      O => bit_counter_6_1_1403
    );
  bit_counter_6_1_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X14Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => bit_counter_6_1_FFY_RSTAND_2168
    );
  read_receive_data_14 : X_SFF
    generic map(
      LOC => "SLICE_X3Y72",
      INIT => '0'
    )
    port map (
      I => read_receive_data_15_DYMUX_2181,
      CE => read_receive_data_15_CEINV_2177,
      CLK => read_receive_data_15_CLKINV_2178,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_15_SRINV_2179,
      O => read_receive_data(14)
    );
  read_receive_data_15 : X_SFF
    generic map(
      LOC => "SLICE_X3Y72",
      INIT => '0'
    )
    port map (
      I => read_receive_data_15_DXMUX_2188,
      CE => read_receive_data_15_CEINV_2177,
      CLK => read_receive_data_15_CLKINV_2178,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_15_SRINV_2179,
      O => read_receive_data(15)
    );
  read_send_data_0_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0300",
      LOC => "SLICE_X13Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => read_receive_data_0_cmp_gt00001_1316,
      ADR2 => bit_counter(6),
      ADR3 => N3,
      O => read_send_data_11_not0001_inv_pack_1
    );
  write_send_data_mux00611 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X13Y72"
    )
    port map (
      ADR0 => latched_data(1),
      ADR1 => VCC,
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => write_send_data(0),
      O => write_send_data_mux0061
    );
  write_send_data_1 : X_SFF
    generic map(
      LOC => "SLICE_X13Y72",
      INIT => '0'
    )
    port map (
      I => write_send_data_1_DXMUX_2224,
      CE => write_send_data_1_CEINV_2205,
      CLK => write_send_data_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_1_SRINV_2207,
      O => write_send_data(1)
    );
  clk_div : X_SFF
    generic map(
      LOC => "SLICE_X45Y84",
      INIT => '0'
    )
    port map (
      I => clk_div1_DYMUX_2239,
      CE => clk_div1_CEINV_2235,
      CLK => clk_div1_CLKINV_2236,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => clk_div1_SRINV_2237,
      O => clk_div1
    );
  busy_in_cmp_eq0000 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X25Y79"
    )
    port map (
      ADR0 => bit_counter(2),
      ADR1 => N4_0,
      ADR2 => bit_counter(1),
      ADR3 => bit_counter(3),
      O => busy_in_cmp_eq0000_pack_1
    );
  clk_div_or00001 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X25Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reset_IBUF_1314,
      ADR2 => VCC,
      ADR3 => busy_in_cmp_eq0000_1409,
      O => clk_div_or0000
    );
  read_send_data_10 : X_SFF
    generic map(
      LOC => "SLICE_X3Y67",
      INIT => '0'
    )
    port map (
      I => read_send_data_10_DYMUX_2278,
      CE => read_send_data_10_CEINV_2274,
      CLK => read_send_data_10_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_send_data_10_SRINV_2276,
      O => read_send_data(10)
    );
  read_send_data_11 : X_SFF
    generic map(
      LOC => "SLICE_X2Y67",
      INIT => '0'
    )
    port map (
      I => read_send_data_11_DXMUX_2296,
      CE => read_send_data_11_CEINV_2290,
      CLK => read_send_data_11_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_11_REVUSED_2294,
      SRST => read_send_data_11_SRINV_2292,
      O => read_send_data(11)
    );
  read_send_data_19_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X24Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => read_send_data(19),
      ADR2 => VCC,
      ADR3 => VCC,
      O => read_send_data_19_rt_2322
    );
  read_send_data_20 : X_SFF
    generic map(
      LOC => "SLICE_X24Y77",
      INIT => '0'
    )
    port map (
      I => read_send_data_21_DYMUX_2325,
      CE => read_send_data_21_CEINV_2311,
      CLK => read_send_data_21_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_21_REVUSED_2326,
      SRST => read_send_data_21_SRINV_2313,
      O => read_send_data(20)
    );
  read_send_data_21 : X_SFF
    generic map(
      LOC => "SLICE_X24Y77",
      INIT => '0'
    )
    port map (
      I => read_send_data_21_DXMUX_2334,
      CE => read_send_data_21_CEINV_2311,
      CLK => read_send_data_21_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_21_REVUSED_2326,
      SRST => read_send_data_21_SRINV_2313,
      O => read_send_data(21)
    );
  read_send_data_12 : X_SFF
    generic map(
      LOC => "SLICE_X3Y71",
      INIT => '0'
    )
    port map (
      I => read_send_data_12_DXMUX_2353,
      CE => read_send_data_12_CEINV_2347,
      CLK => read_send_data_12_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_12_REVUSED_2351,
      SRST => read_send_data_12_SRINV_2349,
      O => read_send_data(12)
    );
  read_send_data_13 : X_SFF
    generic map(
      LOC => "SLICE_X5Y88",
      INIT => '0'
    )
    port map (
      I => read_send_data_13_DYMUX_2369,
      CE => read_send_data_13_CEINV_2365,
      CLK => read_send_data_13_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_send_data_13_SRINV_2367,
      O => read_send_data(13)
    );
  read_send_data_29_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X25Y69"
    )
    port map (
      ADR0 => read_send_data(29),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => read_send_data_29_rt_2394
    );
  read_send_data_30 : X_SFF
    generic map(
      LOC => "SLICE_X25Y69",
      INIT => '0'
    )
    port map (
      I => read_send_data_31_DYMUX_2397,
      CE => read_send_data_31_CEINV_2383,
      CLK => read_send_data_31_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_31_REVUSED_2398,
      SRST => read_send_data_31_SRINV_2385,
      O => read_send_data(30)
    );
  read_send_data_31 : X_SFF
    generic map(
      LOC => "SLICE_X25Y69",
      INIT => '0'
    )
    port map (
      I => read_send_data_31_DXMUX_2406,
      CE => read_send_data_31_CEINV_2383,
      CLK => read_send_data_31_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_31_REVUSED_2398,
      SRST => read_send_data_31_SRINV_2385,
      O => read_send_data(31)
    );
  read_send_data_21_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X26Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => read_send_data(21),
      ADR3 => VCC,
      O => read_send_data_21_rt_2432
    );
  read_send_data_22 : X_SFF
    generic map(
      LOC => "SLICE_X26Y75",
      INIT => '0'
    )
    port map (
      I => read_send_data_23_DYMUX_2435,
      CE => read_send_data_23_CEINV_2421,
      CLK => read_send_data_23_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_23_REVUSED_2436,
      SRST => read_send_data_23_SRINV_2423,
      O => read_send_data(22)
    );
  read_send_data_23 : X_SFF
    generic map(
      LOC => "SLICE_X26Y75",
      INIT => '0'
    )
    port map (
      I => read_send_data_23_DXMUX_2444,
      CE => read_send_data_23_CEINV_2421,
      CLK => read_send_data_23_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_23_REVUSED_2436,
      SRST => read_send_data_23_SRINV_2423,
      O => read_send_data(23)
    );
  read_send_data_13_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X14Y86"
    )
    port map (
      ADR0 => VCC,
      ADR1 => read_send_data(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => read_send_data_13_rt_2470
    );
  read_send_data_14 : X_SFF
    generic map(
      LOC => "SLICE_X14Y86",
      INIT => '0'
    )
    port map (
      I => read_send_data_15_DYMUX_2473,
      CE => read_send_data_15_CEINV_2459,
      CLK => read_send_data_15_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_15_REVUSED_2474,
      SRST => read_send_data_15_SRINV_2461,
      O => read_send_data(14)
    );
  read_send_data_15 : X_SFF
    generic map(
      LOC => "SLICE_X14Y86",
      INIT => '0'
    )
    port map (
      I => read_send_data_15_DXMUX_2482,
      CE => read_send_data_15_CEINV_2459,
      CLK => read_send_data_15_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_15_REVUSED_2474,
      SRST => read_send_data_15_SRINV_2461,
      O => read_send_data(15)
    );
  latched_write_read : X_FF
    generic map(
      LOC => "SLICE_X2Y51",
      INIT => '1'
    )
    port map (
      I => latched_write_read_DYMUX_2496,
      CE => latched_write_read_CEINV_2493,
      CLK => latched_write_read_CLKINV_2494,
      SET => GND,
      RST => GND,
      O => latched_write_read_1343
    );
  read_send_data_39_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X17Y56"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => read_send_data(39),
      ADR3 => VCC,
      O => read_send_data_39_rt_2520
    );
  read_send_data_40 : X_SFF
    generic map(
      LOC => "SLICE_X17Y56",
      INIT => '0'
    )
    port map (
      I => read_send_data_41_DYMUX_2523,
      CE => read_send_data_41_CEINV_2509,
      CLK => read_send_data_41_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_41_REVUSED_2524,
      SRST => read_send_data_41_SRINV_2511,
      O => read_send_data(40)
    );
  read_send_data_41 : X_SFF
    generic map(
      LOC => "SLICE_X17Y56",
      INIT => '0'
    )
    port map (
      I => read_send_data_41_DXMUX_2532,
      CE => read_send_data_41_CEINV_2509,
      CLK => read_send_data_41_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_41_REVUSED_2524,
      SRST => read_send_data_41_SRINV_2511,
      O => read_send_data(41)
    );
  read_send_data_31_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X24Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => read_send_data(31),
      ADR2 => VCC,
      ADR3 => VCC,
      O => read_send_data_31_rt_2558
    );
  read_send_data_32 : X_SFF
    generic map(
      LOC => "SLICE_X24Y67",
      INIT => '0'
    )
    port map (
      I => read_send_data_33_DYMUX_2561,
      CE => read_send_data_33_CEINV_2547,
      CLK => read_send_data_33_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_33_REVUSED_2562,
      SRST => read_send_data_33_SRINV_2549,
      O => read_send_data(32)
    );
  read_send_data_33 : X_SFF
    generic map(
      LOC => "SLICE_X24Y67",
      INIT => '0'
    )
    port map (
      I => read_send_data_33_DXMUX_2570,
      CE => read_send_data_33_CEINV_2547,
      CLK => read_send_data_33_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_33_REVUSED_2562,
      SRST => read_send_data_33_SRINV_2549,
      O => read_send_data(33)
    );
  read_send_data_23_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X26Y73"
    )
    port map (
      ADR0 => VCC,
      ADR1 => read_send_data(23),
      ADR2 => VCC,
      ADR3 => VCC,
      O => read_send_data_23_rt_2596
    );
  read_send_data_24 : X_SFF
    generic map(
      LOC => "SLICE_X26Y73",
      INIT => '0'
    )
    port map (
      I => read_send_data_25_DYMUX_2599,
      CE => read_send_data_25_CEINV_2585,
      CLK => read_send_data_25_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_25_REVUSED_2600,
      SRST => read_send_data_25_SRINV_2587,
      O => read_send_data(24)
    );
  read_send_data_25 : X_SFF
    generic map(
      LOC => "SLICE_X26Y73",
      INIT => '0'
    )
    port map (
      I => read_send_data_25_DXMUX_2608,
      CE => read_send_data_25_CEINV_2585,
      CLK => read_send_data_25_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_25_REVUSED_2600,
      SRST => read_send_data_25_SRINV_2587,
      O => read_send_data(25)
    );
  read_send_data_15_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X16Y87"
    )
    port map (
      ADR0 => VCC,
      ADR1 => read_send_data(15),
      ADR2 => VCC,
      ADR3 => VCC,
      O => read_send_data_15_rt_2634
    );
  read_send_data_16 : X_SFF
    generic map(
      LOC => "SLICE_X16Y87",
      INIT => '0'
    )
    port map (
      I => read_send_data_17_DYMUX_2637,
      CE => read_send_data_17_CEINV_2623,
      CLK => read_send_data_17_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_17_REVUSED_2638,
      SRST => read_send_data_17_SRINV_2625,
      O => read_send_data(16)
    );
  read_send_data_17 : X_SFF
    generic map(
      LOC => "SLICE_X16Y87",
      INIT => '0'
    )
    port map (
      I => read_send_data_17_DXMUX_2646,
      CE => read_send_data_17_CEINV_2623,
      CLK => read_send_data_17_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_17_REVUSED_2638,
      SRST => read_send_data_17_SRINV_2625,
      O => read_send_data(17)
    );
  read_send_data_41_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X16Y53"
    )
    port map (
      ADR0 => VCC,
      ADR1 => read_send_data(41),
      ADR2 => VCC,
      ADR3 => VCC,
      O => read_send_data_41_rt_2672
    );
  read_send_data_42 : X_SFF
    generic map(
      LOC => "SLICE_X16Y53",
      INIT => '0'
    )
    port map (
      I => read_send_data_43_DYMUX_2675,
      CE => read_send_data_43_CEINV_2661,
      CLK => read_send_data_43_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_43_REVUSED_2676,
      SRST => read_send_data_43_SRINV_2663,
      O => read_send_data(42)
    );
  read_send_data_43 : X_SFF
    generic map(
      LOC => "SLICE_X16Y53",
      INIT => '0'
    )
    port map (
      I => read_send_data_43_DXMUX_2684,
      CE => read_send_data_43_CEINV_2661,
      CLK => read_send_data_43_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_43_REVUSED_2676,
      SRST => read_send_data_43_SRINV_2663,
      O => read_send_data(43)
    );
  read_send_data_33_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X20Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => read_send_data(33),
      ADR3 => VCC,
      O => read_send_data_33_rt_2710
    );
  read_send_data_34 : X_SFF
    generic map(
      LOC => "SLICE_X20Y65",
      INIT => '0'
    )
    port map (
      I => read_send_data_35_DYMUX_2713,
      CE => read_send_data_35_CEINV_2699,
      CLK => read_send_data_35_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_35_REVUSED_2714,
      SRST => read_send_data_35_SRINV_2701,
      O => read_send_data(34)
    );
  read_send_data_35 : X_SFF
    generic map(
      LOC => "SLICE_X20Y65",
      INIT => '0'
    )
    port map (
      I => read_send_data_35_DXMUX_2722,
      CE => read_send_data_35_CEINV_2699,
      CLK => read_send_data_35_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_35_REVUSED_2714,
      SRST => read_send_data_35_SRINV_2701,
      O => read_send_data(35)
    );
  read_send_data_25_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X24Y70"
    )
    port map (
      ADR0 => read_send_data(25),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => read_send_data_25_rt_2748
    );
  read_send_data_26 : X_SFF
    generic map(
      LOC => "SLICE_X24Y70",
      INIT => '0'
    )
    port map (
      I => read_send_data_27_DYMUX_2751,
      CE => read_send_data_27_CEINV_2737,
      CLK => read_send_data_27_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_27_REVUSED_2752,
      SRST => read_send_data_27_SRINV_2739,
      O => read_send_data(26)
    );
  read_send_data_27 : X_SFF
    generic map(
      LOC => "SLICE_X24Y70",
      INIT => '0'
    )
    port map (
      I => read_send_data_27_DXMUX_2760,
      CE => read_send_data_27_CEINV_2737,
      CLK => read_send_data_27_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_27_REVUSED_2752,
      SRST => read_send_data_27_SRINV_2739,
      O => read_send_data(27)
    );
  read_send_data_17_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X19Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => read_send_data(17),
      O => read_send_data_17_rt_2786
    );
  read_send_data_18 : X_SFF
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => '0'
    )
    port map (
      I => read_send_data_19_DYMUX_2789,
      CE => read_send_data_19_CEINV_2775,
      CLK => read_send_data_19_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_19_REVUSED_2790,
      SRST => read_send_data_19_SRINV_2777,
      O => read_send_data(18)
    );
  read_send_data_19 : X_SFF
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => '0'
    )
    port map (
      I => read_send_data_19_DXMUX_2798,
      CE => read_send_data_19_CEINV_2775,
      CLK => read_send_data_19_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_19_REVUSED_2790,
      SRST => read_send_data_19_SRINV_2777,
      O => read_send_data(19)
    );
  read_send_data_43_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X16Y52"
    )
    port map (
      ADR0 => VCC,
      ADR1 => read_send_data(43),
      ADR2 => VCC,
      ADR3 => VCC,
      O => read_send_data_43_rt_2824
    );
  read_send_data_44 : X_SFF
    generic map(
      LOC => "SLICE_X16Y52",
      INIT => '0'
    )
    port map (
      I => read_send_data_45_DYMUX_2827,
      CE => read_send_data_45_CEINV_2813,
      CLK => read_send_data_45_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_45_REVUSED_2828,
      SRST => read_send_data_45_SRINV_2815,
      O => read_send_data(44)
    );
  read_send_data_45 : X_SFF
    generic map(
      LOC => "SLICE_X16Y52",
      INIT => '0'
    )
    port map (
      I => read_send_data_45_DXMUX_2836,
      CE => read_send_data_45_CEINV_2813,
      CLK => read_send_data_45_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_45_REVUSED_2828,
      SRST => read_send_data_45_SRINV_2815,
      O => read_send_data(45)
    );
  read_send_data_35_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X18Y62"
    )
    port map (
      ADR0 => read_send_data(35),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => read_send_data_35_rt_2862
    );
  read_send_data_36 : X_SFF
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => '0'
    )
    port map (
      I => read_send_data_37_DYMUX_2865,
      CE => read_send_data_37_CEINV_2851,
      CLK => read_send_data_37_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_37_REVUSED_2866,
      SRST => read_send_data_37_SRINV_2853,
      O => read_send_data(36)
    );
  read_send_data_37 : X_SFF
    generic map(
      LOC => "SLICE_X18Y62",
      INIT => '0'
    )
    port map (
      I => read_send_data_37_DXMUX_2874,
      CE => read_send_data_37_CEINV_2851,
      CLK => read_send_data_37_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => read_send_data_37_REVUSED_2866,
      SRST => read_send_data_37_SRINV_2853,
      O => read_send_data(37)
    );
  read_receive_data_0_and0000_SW3 : X_LUT4
    generic map(
      INIT => X"EFFF",
      LOC => "SLICE_X12Y80"
    )
    port map (
      ADR0 => bit_counter_6_1_1403,
      ADR1 => latched_write_read_1343,
      ADR2 => bit_counter(5),
      ADR3 => bit_counter(4),
      O => N18
    );
  read_receive_data_2 : X_SFF
    generic map(
      LOC => "SLICE_X0Y85",
      INIT => '0'
    )
    port map (
      I => read_receive_data_3_DYMUX_3035,
      CE => read_receive_data_3_CEINV_3031,
      CLK => read_receive_data_3_CLKINV_3032,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_3_SRINV_3033,
      O => read_receive_data(2)
    );
  read_receive_data_3 : X_SFF
    generic map(
      LOC => "SLICE_X0Y85",
      INIT => '0'
    )
    port map (
      I => read_receive_data_3_DXMUX_3042,
      CE => read_receive_data_3_CEINV_3031,
      CLK => read_receive_data_3_CLKINV_3032,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_3_SRINV_3033,
      O => read_receive_data(3)
    );
  counter_cmp_eq000023 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X48Y85"
    )
    port map (
      ADR0 => counter(4),
      ADR1 => counter(5),
      ADR2 => counter(6),
      ADR3 => counter(7),
      O => counter_cmp_eq000023_pack_1
    );
  clk_div_not00021 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X48Y85"
    )
    port map (
      ADR0 => busy_in_1448,
      ADR1 => VCC,
      ADR2 => counter_cmp_eq000023_1460,
      ADR3 => counter_cmp_eq000010_0,
      O => clk_div_not0002
    );
  read_receive_data_4 : X_SFF
    generic map(
      LOC => "SLICE_X3Y83",
      INIT => '0'
    )
    port map (
      I => read_receive_data_5_DYMUX_3083,
      CE => read_receive_data_5_CEINV_3079,
      CLK => read_receive_data_5_CLKINV_3080,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_5_SRINV_3081,
      O => read_receive_data(4)
    );
  read_receive_data_5 : X_SFF
    generic map(
      LOC => "SLICE_X3Y83",
      INIT => '0'
    )
    port map (
      I => read_receive_data_5_DXMUX_3090,
      CE => read_receive_data_5_CEINV_3079,
      CLK => read_receive_data_5_CLKINV_3080,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_receive_data_5_SRINV_3081,
      O => read_receive_data(5)
    );
  bit_counter_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y78",
      INIT => '0'
    )
    port map (
      I => bit_counter_0_DYMUX_3121,
      CE => VCC,
      CLK => bit_counter_0_CLKINVNOT,
      SET => GND,
      RST => bit_counter_0_SRINV_3105,
      O => bit_counter(1)
    );
  Mcount_bit_counter_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X15Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => bit_counter(0),
      ADR3 => VCC,
      O => Mcount_bit_counter_lut(0)
    );
  bit_counter_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y78",
      INIT => '0'
    )
    port map (
      I => bit_counter_0_DXMUX_3143,
      CE => VCC,
      CLK => bit_counter_0_CLKINVNOT,
      SET => GND,
      RST => bit_counter_0_SRINV_3105,
      O => bit_counter(0)
    );
  bit_counter_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y79",
      INIT => '0'
    )
    port map (
      I => bit_counter_2_DYMUX_3180,
      CE => VCC,
      CLK => bit_counter_2_CLKINVNOT,
      SET => GND,
      RST => bit_counter_2_SRINV_3159,
      O => bit_counter(3)
    );
  bit_counter_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y79",
      INIT => '0'
    )
    port map (
      I => bit_counter_2_DXMUX_3199,
      CE => VCC,
      CLK => bit_counter_2_CLKINVNOT,
      SET => GND,
      RST => bit_counter_2_SRINV_3159,
      O => bit_counter(2)
    );
  bit_counter_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y80",
      INIT => '0'
    )
    port map (
      I => bit_counter_4_DYMUX_3236,
      CE => VCC,
      CLK => bit_counter_4_CLKINVNOT,
      SET => GND,
      RST => bit_counter_4_SRINV_3215,
      O => bit_counter(5)
    );
  bit_counter_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y80",
      INIT => '0'
    )
    port map (
      I => bit_counter_4_DXMUX_3255,
      CE => VCC,
      CLK => bit_counter_4_CLKINVNOT,
      SET => GND,
      RST => bit_counter_4_SRINV_3215,
      O => bit_counter(4)
    );
  bit_counter_7_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X15Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => bit_counter(7),
      O => bit_counter_7_rt_3279
    );
  bit_counter_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y81",
      INIT => '0'
    )
    port map (
      I => bit_counter_6_DYMUX_3284,
      CE => VCC,
      CLK => bit_counter_6_CLKINVNOT,
      SET => GND,
      RST => bit_counter_6_SRINV_3271,
      O => bit_counter(7)
    );
  bit_counter_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y81",
      INIT => '0'
    )
    port map (
      I => bit_counter_6_DXMUX_3305,
      CE => VCC,
      CLK => bit_counter_6_CLKINVNOT,
      SET => GND,
      RST => bit_counter_6_SRINV_3271,
      O => bit_counter(6)
    );
  counter_1 : X_SFF
    generic map(
      LOC => "SLICE_X49Y82",
      INIT => '0'
    )
    port map (
      I => counter_0_DYMUX_3339,
      CE => counter_0_CEINV_3321,
      CLK => counter_0_CLKINV_3322,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => counter_0_SRINV_3323,
      O => counter(1)
    );
  Mcount_counter_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X49Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => counter(0),
      O => Mcount_counter_lut(0)
    );
  counter_0 : X_SFF
    generic map(
      LOC => "SLICE_X49Y82",
      INIT => '0'
    )
    port map (
      I => counter_0_DXMUX_3360,
      CE => counter_0_CEINV_3321,
      CLK => counter_0_CLKINV_3322,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => counter_0_SRINV_3323,
      O => counter(0)
    );
  counter_3 : X_SFF
    generic map(
      LOC => "SLICE_X49Y83",
      INIT => '0'
    )
    port map (
      I => counter_2_DYMUX_3398,
      CE => counter_2_CEINV_3375,
      CLK => counter_2_CLKINV_3376,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => counter_2_SRINV_3377,
      O => counter(3)
    );
  counter_2 : X_SFF
    generic map(
      LOC => "SLICE_X49Y83",
      INIT => '0'
    )
    port map (
      I => counter_2_DXMUX_3416,
      CE => counter_2_CEINV_3375,
      CLK => counter_2_CLKINV_3376,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => counter_2_SRINV_3377,
      O => counter(2)
    );
  counter_5 : X_SFF
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => '0'
    )
    port map (
      I => counter_4_DYMUX_3454,
      CE => counter_4_CEINV_3431,
      CLK => counter_4_CLKINV_3432,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => counter_4_SRINV_3433,
      O => counter(5)
    );
  counter_4 : X_SFF
    generic map(
      LOC => "SLICE_X49Y84",
      INIT => '0'
    )
    port map (
      I => counter_4_DXMUX_3472,
      CE => counter_4_CEINV_3431,
      CLK => counter_4_CLKINV_3432,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => counter_4_SRINV_3433,
      O => counter(4)
    );
  counter_7_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X49Y85"
    )
    port map (
      ADR0 => counter(7),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => counter_7_rt_3496
    );
  counter_7 : X_SFF
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => '0'
    )
    port map (
      I => counter_6_DYMUX_3501,
      CE => counter_6_CEINV_3486,
      CLK => counter_6_CLKINV_3487,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => counter_6_SRINV_3488,
      O => counter(7)
    );
  counter_6 : X_SFF
    generic map(
      LOC => "SLICE_X49Y85",
      INIT => '0'
    )
    port map (
      I => counter_6_DXMUX_3521,
      CE => counter_6_CEINV_3486,
      CLK => counter_6_CLKINV_3487,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => counter_6_SRINV_3488,
      O => counter(6)
    );
  MDC_OUTPUT_TFF_T1INV : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => MDC_OUTPUT_TFF_T1INV_3567
    );
  MDC_OUTPUT_TFF_TSR_USED : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 638 ps
    )
    port map (
      I => write_send_data_and0000_0,
      O => MDC_OUTPUT_TFF_TSR_USED_3570
    );
  MDC_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mtrien_MDC_3572,
      O => MDC_T
    );
  Mtrien_MDC : X_SFF
    generic map(
      LOC => "PAD12",
      INIT => '0'
    )
    port map (
      I => MDC_OUTPUT_TFF_T1INV_3567,
      CE => VCC,
      CLK => MDC_OUTPUT_OTCLK1INV_3563,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => MDC_OUTPUT_TFF_TSR_USED_3570,
      O => Mtrien_MDC_3572
    );
  MDC_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => MDC_OUTPUT_OTCLK1INV_3563
    );
  strt_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_INBUF,
      O => strt_IBUF_1362
    );
  reg_addr_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD189",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr_0_INBUF,
      O => reg_addr_0_IBUF_1361
    );
  reg_addr_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD188",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr_1_INBUF,
      O => reg_addr_1_IBUF_1360
    );
  reg_addr_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD187",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr_2_INBUF,
      O => reg_addr_2_IBUF_1366
    );
  reg_addr_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr_3_INBUF,
      O => reg_addr_3_IBUF_1365
    );
  reg_addr_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_addr_4_INBUF,
      O => reg_addr_4_IBUF_1369
    );
  latched_data_0 : X_FF
    generic map(
      LOC => "IPAD228",
      INIT => '0'
    )
    port map (
      I => data_in_0_IFF_IDDRIN_MUX_3717,
      CE => data_in_0_IFF_ICEINV_3719,
      CLK => data_in_0_IFF_ICLK1INV_3721,
      SET => GND,
      RST => GND,
      O => latched_data(0)
    );
  data_in_0_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD228",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_0_INBUF,
      O => data_in_0_IFF_IDDRIN_MUX_3717
    );
  data_in_0_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD228",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_0_IFF_ICLK1INV_3721
    );
  data_in_0_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD228",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_0_IFF_ICEINV_3719
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_INBUF,
      O => reset_IBUF_1314
    );
  phy_addr_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD194",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr_0_INBUF,
      O => phy_addr_0_IBUF_1387
    );
  latched_data_15 : X_FF
    generic map(
      LOC => "PAD198",
      INIT => '0'
    )
    port map (
      I => data_in_15_IFF_IDDRIN_MUX_4015,
      CE => data_in_15_IFF_ICEINV_4017,
      CLK => data_in_15_IFF_ICLK1INV_4019,
      SET => GND,
      RST => GND,
      O => latched_data(15)
    );
  data_in_15_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_15_INBUF,
      O => data_in_15_IFF_IDDRIN_MUX_4015
    );
  data_in_15_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_15_IFF_ICLK1INV_4019
    );
  data_in_15_IFF_ICEINV : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_15_IFF_ICEINV_4017
    );
  latched_data_7 : X_FF
    generic map(
      LOC => "PAD206",
      INIT => '0'
    )
    port map (
      I => data_in_7_IFF_IDDRIN_MUX_4035,
      CE => data_in_7_IFF_ICEINV_4037,
      CLK => data_in_7_IFF_ICLK1INV_4039,
      SET => GND,
      RST => GND,
      O => latched_data(7)
    );
  data_in_7_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "PAD206",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_7_INBUF,
      O => data_in_7_IFF_IDDRIN_MUX_4035
    );
  data_in_7_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD206",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_7_IFF_ICLK1INV_4039
    );
  data_in_7_IFF_ICEINV : X_BUF
    generic map(
      LOC => "PAD206",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_7_IFF_ICEINV_4037
    );
  phy_addr_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr_1_INBUF,
      O => phy_addr_1_IBUF_1386
    );
  latched_data_8 : X_FF
    generic map(
      LOC => "PAD205",
      INIT => '0'
    )
    port map (
      I => data_in_8_IFF_IDDRIN_MUX_4061,
      CE => data_in_8_IFF_ICEINV_4063,
      CLK => data_in_8_IFF_ICLK1INV_4065,
      SET => GND,
      RST => GND,
      O => latched_data(8)
    );
  data_in_8_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "PAD205",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_8_INBUF,
      O => data_in_8_IFF_IDDRIN_MUX_4061
    );
  data_in_8_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "PAD205",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_8_IFF_ICLK1INV_4065
    );
  data_in_8_IFF_ICEINV : X_BUF
    generic map(
      LOC => "PAD205",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_8_IFF_ICEINV_4063
    );
  phy_addr_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD192",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr_2_INBUF,
      O => phy_addr_2_IBUF_1391
    );
  latched_data_9 : X_FF
    generic map(
      LOC => "IPAD204",
      INIT => '0'
    )
    port map (
      I => data_in_9_IFF_IDDRIN_MUX_4087,
      CE => data_in_9_IFF_ICEINV_4089,
      CLK => data_in_9_IFF_ICLK1INV_4091,
      SET => GND,
      RST => GND,
      O => latched_data(9)
    );
  data_in_9_IFF_IDDRIN_MUX : X_BUF
    generic map(
      LOC => "IPAD204",
      PATHPULSE => 638 ps
    )
    port map (
      I => data_in_9_INBUF,
      O => data_in_9_IFF_IDDRIN_MUX_4087
    );
  data_in_9_IFF_ICLK1INV : X_BUF
    generic map(
      LOC => "IPAD204",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => data_in_9_IFF_ICLK1INV_4091
    );
  data_in_9_IFF_ICEINV : X_BUF
    generic map(
      LOC => "IPAD204",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => data_in_9_IFF_ICEINV_4089
    );
  phy_addr_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD191",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr_3_INBUF,
      O => phy_addr_3_IBUF_1390
    );
  phy_addr_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD190",
      PATHPULSE => 638 ps
    )
    port map (
      I => phy_addr_4_INBUF,
      O => phy_addr_4_IBUF_1394
    );
  busy_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => busy_OUTPUT_OFF_O1INV_4143
    );
  busy_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 638 ps
    )
    port map (
      I => busy_OUTPUT_OFF_O1INV_4143,
      O => busy_OUTPUT_OFF_ODDRIN1_MUX
    );
  busy_OUTPUT_OFF_PCICE_MUX : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 638 ps
    )
    port map (
      I => busy_in_cmp_eq0000_1409,
      O => busy_OUTPUT_OFF_PCICE_MUX_4134
    );
  busy_OUTPUT_OFF_OSR_USED : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_IBUF_1314,
      O => busy_OUTPUT_OFF_OSR_USED_4137
    );
  busy_OUTPUT_OFF_OREV_USED : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 638 ps
    )
    port map (
      I => strt_IBUF_1362,
      O => busy_OUTPUT_OFF_OREV_USED_4139
    );
  busy_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 638 ps
    )
    port map (
      I => busy_in_1_4141,
      O => busy_O
    );
  busy_in_1 : X_SFF
    generic map(
      LOC => "PAD41",
      INIT => '0'
    )
    port map (
      I => busy_OUTPUT_OFF_ODDRIN1_MUX,
      CE => busy_OUTPUT_OFF_PCICE_MUX_4134,
      CLK => busy_OUTPUT_OTCLK1INV_4127,
      SET => GND,
      RST => GND,
      SSET => busy_OUTPUT_OFF_OREV_USED_4139,
      SRST => busy_OUTPUT_OFF_OSR_USED_4137,
      O => busy_in_1_4141
    );
  busy_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 638 ps
    )
    port map (
      I => clk_BUFGP,
      O => busy_OUTPUT_OTCLK1INV_4127
    );
  counter_or000011 : X_LUT4
    generic map(
      INIT => X"FF80",
      LOC => "SLICE_X48Y83"
    )
    port map (
      ADR0 => counter_cmp_eq000010_0,
      ADR1 => busy_in_1448,
      ADR2 => counter_cmp_eq000023_1460,
      ADR3 => busy_in_cmp_eq0000_1409,
      O => counter_or00001
    );
  Mtridata_MDIO_and0000135_F : X_LUT4
    generic map(
      INIT => X"0036",
      LOC => "SLICE_X15Y65"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => bit_counter(6),
      ADR2 => bit_counter(4),
      ADR3 => bit_counter(7),
      O => N22
    );
  Mtridata_MDIO_and0000135_G : X_LUT4
    generic map(
      INIT => X"1010",
      LOC => "SLICE_X15Y65"
    )
    port map (
      ADR0 => bit_counter(7),
      ADR1 => bit_counter(6),
      ADR2 => N20_0,
      ADR3 => VCC,
      O => N23
    );
  Mtridata_MDIO_and0000282 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X20Y78"
    )
    port map (
      ADR0 => bit_counter(0),
      ADR1 => bit_counter(1),
      ADR2 => bit_counter(2),
      ADR3 => bit_counter(3),
      O => Mtridata_MDIO_and0000282_4219
    );
  Mtridata_MDIO_and0000281 : X_LUT4
    generic map(
      INIT => X"7F74",
      LOC => "SLICE_X20Y78"
    )
    port map (
      ADR0 => bit_counter(0),
      ADR1 => bit_counter(1),
      ADR2 => bit_counter(2),
      ADR3 => bit_counter(3),
      O => Mtridata_MDIO_and0000281_4226
    );
  read_send_data_0_cmp_lt0000139 : X_LUT4
    generic map(
      INIT => X"22A2",
      LOC => "SLICE_X2Y64"
    )
    port map (
      ADR0 => read_send_data_0_cmp_lt0000134_0,
      ADR1 => bit_counter(5),
      ADR2 => read_send_data_0_cmp_lt0000112_0,
      ADR3 => bit_counter(4),
      O => read_send_data_0_cmp_lt0000_pack_1
    );
  read_send_data_10_and0000 : X_LUT4
    generic map(
      INIT => X"FE00",
      LOC => "SLICE_X2Y64"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => N10_0,
      ADR2 => bit_counter(6),
      ADR3 => read_send_data_0_cmp_lt0000,
      O => read_send_data_10_and0000_4251
    );
  read_receive_data_0_and0000_SW2 : X_LUT4
    generic map(
      INIT => X"FFFB",
      LOC => "SLICE_X3Y82"
    )
    port map (
      ADR0 => bit_counter(4),
      ADR1 => bit_counter_6_1_1403,
      ADR2 => latched_write_read_1343,
      ADR3 => bit_counter(5),
      O => read_receive_data_0_and0000_SW2_O_pack_1
    );
  read_receive_data_0_and0000 : X_LUT4
    generic map(
      INIT => X"0131",
      LOC => "SLICE_X3Y82"
    )
    port map (
      ADR0 => read_receive_data_0_and0000_SW2_O,
      ADR1 => bit_counter(7),
      ADR2 => read_receive_data_0_cmp_gt000011_0,
      ADR3 => N18_0,
      O => read_receive_data_0_and0000_4275
    );
  read_receive_data_0_cmp_gt00001 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X14Y79"
    )
    port map (
      ADR0 => bit_counter(2),
      ADR1 => bit_counter(0),
      ADR2 => bit_counter(1),
      ADR3 => bit_counter(3),
      O => read_receive_data_0_cmp_gt00001_pack_1
    );
  write_send_data_and0000 : X_LUT4
    generic map(
      INIT => X"0451",
      LOC => "SLICE_X14Y79"
    )
    port map (
      ADR0 => bit_counter(7),
      ADR1 => N8_0,
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => bit_counter(6),
      O => write_send_data_and0000_4299
    );
  busy_in_cmp_eq000011 : X_LUT4
    generic map(
      INIT => X"0005",
      LOC => "SLICE_X12Y78"
    )
    port map (
      ADR0 => bit_counter(7),
      ADR1 => VCC,
      ADR2 => bit_counter(5),
      ADR3 => bit_counter(4),
      O => N3_pack_1
    );
  write_send_data_not00011 : X_LUT4
    generic map(
      INIT => X"FF10",
      LOC => "SLICE_X12Y78"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => bit_counter(6),
      ADR2 => N3,
      ADR3 => write_send_data_and0000_0,
      O => write_send_data_not0001
    );
  write_send_data_mux00521 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X0Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => latched_data(10),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => write_send_data(9),
      O => write_send_data_mux0052
    );
  write_send_data_10 : X_SFF
    generic map(
      LOC => "SLICE_X0Y45",
      INIT => '0'
    )
    port map (
      I => write_send_data_11_DYMUX_4348,
      CE => write_send_data_11_CEINV_4337,
      CLK => write_send_data_11_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_11_SRINV_4339,
      O => write_send_data(10)
    );
  write_send_data_mux00511 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X0Y45"
    )
    port map (
      ADR0 => VCC,
      ADR1 => write_send_data(10),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => latched_data(11),
      O => write_send_data_mux0051
    );
  write_send_data_11 : X_SFF
    generic map(
      LOC => "SLICE_X0Y45",
      INIT => '0'
    )
    port map (
      I => write_send_data_11_DXMUX_4362,
      CE => write_send_data_11_CEINV_4337,
      CLK => write_send_data_11_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_11_SRINV_4339,
      O => write_send_data(11)
    );
  write_send_data_mux00441 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X7Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => write_send_data(19),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => latched_reg_addr(2),
      O => write_send_data_mux0044
    );
  write_send_data_20 : X_SFF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      I => write_send_data_21_DYMUX_4390,
      CE => write_send_data_21_CEINV_4379,
      CLK => write_send_data_21_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_21_SRINV_4381,
      O => write_send_data(20)
    );
  write_send_data_mux00431 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X7Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => latched_reg_addr(3),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => write_send_data(20),
      O => write_send_data_mux0043
    );
  write_send_data_21 : X_SFF
    generic map(
      LOC => "SLICE_X7Y3",
      INIT => '0'
    )
    port map (
      I => write_send_data_21_DXMUX_4404,
      CE => write_send_data_21_CEINV_4379,
      CLK => write_send_data_21_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_21_SRINV_4381,
      O => write_send_data(21)
    );
  write_send_data_mux00501 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X0Y40"
    )
    port map (
      ADR0 => VCC,
      ADR1 => latched_data(12),
      ADR2 => write_send_data(11),
      ADR3 => read_send_data_11_not0001_inv,
      O => write_send_data_mux0050
    );
  write_send_data_12 : X_SFF
    generic map(
      LOC => "SLICE_X0Y40",
      INIT => '0'
    )
    port map (
      I => write_send_data_13_DYMUX_4432,
      CE => write_send_data_13_CEINV_4421,
      CLK => write_send_data_13_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_13_SRINV_4423,
      O => write_send_data(12)
    );
  write_send_data_mux00491 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X0Y40"
    )
    port map (
      ADR0 => read_send_data_11_not0001_inv,
      ADR1 => write_send_data(12),
      ADR2 => VCC,
      ADR3 => latched_data(13),
      O => write_send_data_mux0049
    );
  write_send_data_13 : X_SFF
    generic map(
      LOC => "SLICE_X0Y40",
      INIT => '0'
    )
    port map (
      I => write_send_data_13_DXMUX_4446,
      CE => write_send_data_13_CEINV_4421,
      CLK => write_send_data_13_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_13_SRINV_4423,
      O => write_send_data(13)
    );
  read_send_data_0_mux00001 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X0Y30"
    )
    port map (
      ADR0 => N3,
      ADR1 => read_receive_data_0_cmp_gt00001_1316,
      ADR2 => reg_addr_0_IBUF_1361,
      ADR3 => bit_counter(6),
      O => read_send_data_0_mux0000
    );
  read_send_data_0 : X_SFF
    generic map(
      LOC => "SLICE_X0Y30",
      INIT => '0'
    )
    port map (
      I => read_send_data_1_DYMUX_4474,
      CE => read_send_data_1_CEINV_4464,
      CLK => read_send_data_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_send_data_1_SRINV_4466,
      O => read_send_data(0)
    );
  read_send_data_1_mux00001 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X0Y30"
    )
    port map (
      ADR0 => read_send_data_11_not0001_inv,
      ADR1 => reg_addr_1_IBUF_1360,
      ADR2 => VCC,
      ADR3 => read_send_data(0),
      O => read_send_data_1_mux0000
    );
  read_send_data_1 : X_SFF
    generic map(
      LOC => "SLICE_X0Y30",
      INIT => '0'
    )
    port map (
      I => read_send_data_1_DXMUX_4488,
      CE => read_send_data_1_CEINV_4464,
      CLK => read_send_data_1_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_send_data_1_SRINV_4466,
      O => read_send_data(1)
    );
  write_send_data_mux00341 : X_LUT4
    generic map(
      INIT => X"ABAA",
      LOC => "SLICE_X22Y31"
    )
    port map (
      ADR0 => write_send_data(29),
      ADR1 => bit_counter(6),
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => N3,
      O => write_send_data_mux0034
    );
  write_send_data_30 : X_SFF
    generic map(
      LOC => "SLICE_X22Y31",
      INIT => '0'
    )
    port map (
      I => write_send_data_31_DYMUX_4517,
      CE => write_send_data_31_CEINV_4507,
      CLK => write_send_data_31_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_31_SRINV_4509,
      O => write_send_data(30)
    );
  write_send_data_mux00331 : X_LUT4
    generic map(
      INIT => X"C8CC",
      LOC => "SLICE_X22Y31"
    )
    port map (
      ADR0 => bit_counter(6),
      ADR1 => write_send_data(30),
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => N3,
      O => write_send_data_mux0033
    );
  write_send_data_31 : X_SFF
    generic map(
      LOC => "SLICE_X22Y31",
      INIT => '0'
    )
    port map (
      I => write_send_data_31_DXMUX_4530,
      CE => write_send_data_31_CEINV_4507,
      CLK => write_send_data_31_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_31_SRINV_4509,
      O => write_send_data(31)
    );
  write_send_data_mux00421 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X12Y9"
    )
    port map (
      ADR0 => latched_reg_addr(4),
      ADR1 => write_send_data(21),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => VCC,
      O => write_send_data_mux0042
    );
  write_send_data_22 : X_SFF
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => '0'
    )
    port map (
      I => write_send_data_23_DYMUX_4558,
      CE => write_send_data_23_CEINV_4547,
      CLK => write_send_data_23_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_23_SRINV_4549,
      O => write_send_data(22)
    );
  write_send_data_mux00411 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X12Y9"
    )
    port map (
      ADR0 => read_send_data_11_not0001_inv,
      ADR1 => latched_phy_addr(0),
      ADR2 => VCC,
      ADR3 => write_send_data(22),
      O => write_send_data_mux0041
    );
  write_send_data_23 : X_SFF
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => '0'
    )
    port map (
      I => write_send_data_23_DXMUX_4572,
      CE => write_send_data_23_CEINV_4547,
      CLK => write_send_data_23_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_23_SRINV_4549,
      O => write_send_data(23)
    );
  write_send_data_mux00481 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X1Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => latched_data(14),
      ADR2 => write_send_data(13),
      ADR3 => read_send_data_11_not0001_inv,
      O => write_send_data_mux0048
    );
  write_send_data_14 : X_SFF
    generic map(
      LOC => "SLICE_X1Y37",
      INIT => '0'
    )
    port map (
      I => write_send_data_15_DYMUX_4600,
      CE => write_send_data_15_CEINV_4589,
      CLK => write_send_data_15_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_15_SRINV_4591,
      O => write_send_data(14)
    );
  write_send_data_mux00471 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X1Y37"
    )
    port map (
      ADR0 => read_send_data_11_not0001_inv,
      ADR1 => VCC,
      ADR2 => latched_data(15),
      ADR3 => write_send_data(14),
      O => write_send_data_mux0047
    );
  write_send_data_15 : X_SFF
    generic map(
      LOC => "SLICE_X1Y37",
      INIT => '0'
    )
    port map (
      I => write_send_data_15_DXMUX_4614,
      CE => write_send_data_15_CEINV_4589,
      CLK => write_send_data_15_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_15_SRINV_4591,
      O => write_send_data(15)
    );
  read_send_data_2_mux00001 : X_LUT4
    generic map(
      INIT => X"AAF0",
      LOC => "SLICE_X0Y27"
    )
    port map (
      ADR0 => reg_addr_2_IBUF_1366,
      ADR1 => VCC,
      ADR2 => read_send_data(1),
      ADR3 => read_send_data_11_not0001_inv,
      O => read_send_data_2_mux0000
    );
  read_send_data_2 : X_SFF
    generic map(
      LOC => "SLICE_X0Y27",
      INIT => '0'
    )
    port map (
      I => read_send_data_3_DYMUX_4642,
      CE => read_send_data_3_CEINV_4631,
      CLK => read_send_data_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_send_data_3_SRINV_4633,
      O => read_send_data(2)
    );
  read_send_data_3_mux00001 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X0Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reg_addr_3_IBUF_1365,
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => read_send_data(2),
      O => read_send_data_3_mux0000
    );
  read_send_data_3 : X_SFF
    generic map(
      LOC => "SLICE_X0Y27",
      INIT => '0'
    )
    port map (
      I => read_send_data_3_DXMUX_4656,
      CE => read_send_data_3_CEINV_4631,
      CLK => read_send_data_3_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_send_data_3_SRINV_4633,
      O => read_send_data(3)
    );
  write_send_data_mux00241 : X_LUT4
    generic map(
      INIT => X"CCCE",
      LOC => "SLICE_X22Y48"
    )
    port map (
      ADR0 => N3,
      ADR1 => write_send_data(39),
      ADR2 => bit_counter(6),
      ADR3 => read_receive_data_0_cmp_gt00001_1316,
      O => write_send_data_mux0024
    );
  write_send_data_40 : X_SFF
    generic map(
      LOC => "SLICE_X22Y48",
      INIT => '0'
    )
    port map (
      I => write_send_data_41_DYMUX_4685,
      CE => write_send_data_41_CEINV_4675,
      CLK => write_send_data_41_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_41_SRINV_4677,
      O => write_send_data(40)
    );
  write_send_data_mux00231 : X_LUT4
    generic map(
      INIT => X"CCCE",
      LOC => "SLICE_X22Y48"
    )
    port map (
      ADR0 => N3,
      ADR1 => write_send_data(40),
      ADR2 => bit_counter(6),
      ADR3 => read_receive_data_0_cmp_gt00001_1316,
      O => write_send_data_mux0023
    );
  write_send_data_41 : X_SFF
    generic map(
      LOC => "SLICE_X22Y48",
      INIT => '0'
    )
    port map (
      I => write_send_data_41_DXMUX_4698,
      CE => write_send_data_41_CEINV_4675,
      CLK => write_send_data_41_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_41_SRINV_4677,
      O => write_send_data(41)
    );
  write_send_data_mux00321 : X_LUT4
    generic map(
      INIT => X"F1F0",
      LOC => "SLICE_X22Y35"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => bit_counter(6),
      ADR2 => write_send_data(31),
      ADR3 => N3,
      O => write_send_data_mux0032
    );
  write_send_data_32 : X_SFF
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => '0'
    )
    port map (
      I => write_send_data_33_DYMUX_4727,
      CE => write_send_data_33_CEINV_4717,
      CLK => write_send_data_33_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_33_SRINV_4719,
      O => write_send_data(32)
    );
  write_send_data_mux00311 : X_LUT4
    generic map(
      INIT => X"FF04",
      LOC => "SLICE_X22Y35"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => N3,
      ADR2 => bit_counter(6),
      ADR3 => write_send_data(32),
      O => write_send_data_mux0031
    );
  write_send_data_33 : X_SFF
    generic map(
      LOC => "SLICE_X22Y35",
      INIT => '0'
    )
    port map (
      I => write_send_data_33_DXMUX_4740,
      CE => write_send_data_33_CEINV_4717,
      CLK => write_send_data_33_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_33_SRINV_4719,
      O => write_send_data(33)
    );
  write_send_data_mux00401 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X15Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => write_send_data(23),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => latched_phy_addr(1),
      O => write_send_data_mux0040
    );
  write_send_data_24 : X_SFF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      I => write_send_data_25_DYMUX_4768,
      CE => write_send_data_25_CEINV_4757,
      CLK => write_send_data_25_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_25_SRINV_4759,
      O => write_send_data(24)
    );
  write_send_data_mux00391 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X15Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => latched_phy_addr(2),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => write_send_data(24),
      O => write_send_data_mux0039
    );
  write_send_data_25 : X_SFF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      I => write_send_data_25_DXMUX_4782,
      CE => write_send_data_25_CEINV_4757,
      CLK => write_send_data_25_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_25_SRINV_4759,
      O => write_send_data(25)
    );
  write_send_data_index0003LogicTrst1 : X_LUT4
    generic map(
      INIT => X"CDCC",
      LOC => "SLICE_X12Y31"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => write_send_data(15),
      ADR2 => bit_counter(6),
      ADR3 => N3,
      O => write_send_data_index0003
    );
  write_send_data_16 : X_SFF
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => '0'
    )
    port map (
      I => write_send_data_17_DYMUX_4811,
      CE => write_send_data_17_CEINV_4801,
      CLK => write_send_data_17_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_17_SRINV_4803,
      O => write_send_data(16)
    );
  write_send_data_index0001LogicTrst1 : X_LUT4
    generic map(
      INIT => X"FF04",
      LOC => "SLICE_X12Y31"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => N3,
      ADR2 => bit_counter(6),
      ADR3 => write_send_data(16),
      O => write_send_data_index0001
    );
  write_send_data_17 : X_SFF
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => '0'
    )
    port map (
      I => write_send_data_17_DXMUX_4824,
      CE => write_send_data_17_CEINV_4801,
      CLK => write_send_data_17_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_17_SRINV_4803,
      O => write_send_data(17)
    );
  read_send_data_4_mux00001 : X_LUT4
    generic map(
      INIT => X"F5A0",
      LOC => "SLICE_X1Y29"
    )
    port map (
      ADR0 => read_send_data_11_not0001_inv,
      ADR1 => VCC,
      ADR2 => reg_addr_4_IBUF_1369,
      ADR3 => read_send_data(3),
      O => read_send_data_4_mux0000
    );
  read_send_data_4 : X_SFF
    generic map(
      LOC => "SLICE_X1Y29",
      INIT => '0'
    )
    port map (
      I => read_send_data_5_DYMUX_4852,
      CE => read_send_data_5_CEINV_4841,
      CLK => read_send_data_5_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_send_data_5_SRINV_4843,
      O => read_send_data(4)
    );
  read_send_data_5_mux00001 : X_LUT4
    generic map(
      INIT => X"DD88",
      LOC => "SLICE_X1Y29"
    )
    port map (
      ADR0 => read_send_data_11_not0001_inv,
      ADR1 => phy_addr_0_IBUF_1387,
      ADR2 => VCC,
      ADR3 => read_send_data(4),
      O => read_send_data_5_mux0000
    );
  read_send_data_5 : X_SFF
    generic map(
      LOC => "SLICE_X1Y29",
      INIT => '0'
    )
    port map (
      I => read_send_data_5_DXMUX_4866,
      CE => read_send_data_5_CEINV_4841,
      CLK => read_send_data_5_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => read_send_data_5_SRINV_4843,
      O => read_send_data(5)
    );
  write_send_data_mux00141 : X_LUT4
    generic map(
      INIT => X"FF02",
      LOC => "SLICE_X21Y54"
    )
    port map (
      ADR0 => N3,
      ADR1 => bit_counter(6),
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => write_send_data(49),
      O => write_send_data_mux0014
    );
  write_send_data_50 : X_SFF
    generic map(
      LOC => "SLICE_X21Y54",
      INIT => '0'
    )
    port map (
      I => write_send_data_51_DYMUX_4895,
      CE => write_send_data_51_CEINV_4885,
      CLK => write_send_data_51_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_51_SRINV_4887,
      O => write_send_data(50)
    );
  write_send_data_mux00131 : X_LUT4
    generic map(
      INIT => X"AAAE",
      LOC => "SLICE_X21Y54"
    )
    port map (
      ADR0 => write_send_data(50),
      ADR1 => N3,
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => bit_counter(6),
      O => write_send_data_mux0013
    );
  write_send_data_51 : X_SFF
    generic map(
      LOC => "SLICE_X21Y54",
      INIT => '0'
    )
    port map (
      I => write_send_data_51_DXMUX_4908,
      CE => write_send_data_51_CEINV_4885,
      CLK => write_send_data_51_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_51_SRINV_4887,
      O => write_send_data(51)
    );
  write_send_data_mux00221 : X_LUT4
    generic map(
      INIT => X"AAAE",
      LOC => "SLICE_X22Y49"
    )
    port map (
      ADR0 => write_send_data(41),
      ADR1 => N3,
      ADR2 => bit_counter(6),
      ADR3 => read_receive_data_0_cmp_gt00001_1316,
      O => write_send_data_mux0022
    );
  write_send_data_42 : X_SFF
    generic map(
      LOC => "SLICE_X22Y49",
      INIT => '0'
    )
    port map (
      I => write_send_data_43_DYMUX_4937,
      CE => write_send_data_43_CEINV_4927,
      CLK => write_send_data_43_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_43_SRINV_4929,
      O => write_send_data(42)
    );
  write_send_data_mux00211 : X_LUT4
    generic map(
      INIT => X"FF02",
      LOC => "SLICE_X22Y49"
    )
    port map (
      ADR0 => N3,
      ADR1 => read_receive_data_0_cmp_gt00001_1316,
      ADR2 => bit_counter(6),
      ADR3 => write_send_data(42),
      O => write_send_data_mux0021
    );
  write_send_data_43 : X_SFF
    generic map(
      LOC => "SLICE_X22Y49",
      INIT => '0'
    )
    port map (
      I => write_send_data_43_DXMUX_4950,
      CE => write_send_data_43_CEINV_4927,
      CLK => write_send_data_43_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_43_SRINV_4929,
      O => write_send_data(43)
    );
  write_send_data_mux00301 : X_LUT4
    generic map(
      INIT => X"FF10",
      LOC => "SLICE_X21Y41"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => bit_counter(6),
      ADR2 => N3,
      ADR3 => write_send_data(33),
      O => write_send_data_mux0030
    );
  write_send_data_34 : X_SFF
    generic map(
      LOC => "SLICE_X21Y41",
      INIT => '0'
    )
    port map (
      I => write_send_data_35_DYMUX_4979,
      CE => write_send_data_35_CEINV_4969,
      CLK => write_send_data_35_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_35_SRINV_4971,
      O => write_send_data(34)
    );
  write_send_data_mux00291 : X_LUT4
    generic map(
      INIT => X"FF10",
      LOC => "SLICE_X21Y41"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => bit_counter(6),
      ADR2 => N3,
      ADR3 => write_send_data(34),
      O => write_send_data_mux0029
    );
  write_send_data_35 : X_SFF
    generic map(
      LOC => "SLICE_X21Y41",
      INIT => '0'
    )
    port map (
      I => write_send_data_35_DXMUX_4992,
      CE => write_send_data_35_CEINV_4969,
      CLK => write_send_data_35_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_35_SRINV_4971,
      O => write_send_data(35)
    );
  write_send_data_mux00381 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X19Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => write_send_data(25),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => latched_phy_addr(3),
      O => write_send_data_mux0038
    );
  write_send_data_26 : X_SFF
    generic map(
      LOC => "SLICE_X19Y15",
      INIT => '0'
    )
    port map (
      I => write_send_data_27_DYMUX_5020,
      CE => write_send_data_27_CEINV_5009,
      CLK => write_send_data_27_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_27_SRINV_5011,
      O => write_send_data(26)
    );
  write_send_data_mux00371 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X19Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => latched_phy_addr(4),
      ADR2 => read_send_data_11_not0001_inv,
      ADR3 => write_send_data(26),
      O => write_send_data_mux0037
    );
  write_send_data_27 : X_SFF
    generic map(
      LOC => "SLICE_X19Y15",
      INIT => '0'
    )
    port map (
      I => write_send_data_27_DXMUX_5034,
      CE => write_send_data_27_CEINV_5009,
      CLK => write_send_data_27_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_27_SRINV_5011,
      O => write_send_data(27)
    );
  write_send_data_54 : X_SFF
    generic map(
      LOC => "SLICE_X20Y54",
      INIT => '0'
    )
    port map (
      I => write_send_data_55_DYMUX_5441,
      CE => write_send_data_55_CEINV_5431,
      CLK => write_send_data_55_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_55_SRINV_5433,
      O => write_send_data(54)
    );
  write_send_data_mux00091 : X_LUT4
    generic map(
      INIT => X"FF04",
      LOC => "SLICE_X20Y54"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => N3,
      ADR2 => bit_counter(6),
      ADR3 => write_send_data(54),
      O => write_send_data_mux0009
    );
  write_send_data_55 : X_SFF
    generic map(
      LOC => "SLICE_X20Y54",
      INIT => '0'
    )
    port map (
      I => write_send_data_55_DXMUX_5454,
      CE => write_send_data_55_CEINV_5431,
      CLK => write_send_data_55_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_55_SRINV_5433,
      O => write_send_data(55)
    );
  write_send_data_mux00181 : X_LUT4
    generic map(
      INIT => X"FF02",
      LOC => "SLICE_X21Y55"
    )
    port map (
      ADR0 => N3,
      ADR1 => bit_counter(6),
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => write_send_data(45),
      O => write_send_data_mux0018
    );
  write_send_data_46 : X_SFF
    generic map(
      LOC => "SLICE_X21Y55",
      INIT => '0'
    )
    port map (
      I => write_send_data_47_DYMUX_5483,
      CE => write_send_data_47_CEINV_5473,
      CLK => write_send_data_47_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_47_SRINV_5475,
      O => write_send_data(46)
    );
  write_send_data_mux00171 : X_LUT4
    generic map(
      INIT => X"FF02",
      LOC => "SLICE_X21Y55"
    )
    port map (
      ADR0 => N3,
      ADR1 => bit_counter(6),
      ADR2 => read_receive_data_0_cmp_gt00001_1316,
      ADR3 => write_send_data(46),
      O => write_send_data_mux0017
    );
  write_send_data_47 : X_SFF
    generic map(
      LOC => "SLICE_X21Y55",
      INIT => '0'
    )
    port map (
      I => write_send_data_47_DXMUX_5496,
      CE => write_send_data_47_CEINV_5473,
      CLK => write_send_data_47_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_47_SRINV_5475,
      O => write_send_data(47)
    );
  write_send_data_mux00261 : X_LUT4
    generic map(
      INIT => X"AAAE",
      LOC => "SLICE_X20Y49"
    )
    port map (
      ADR0 => write_send_data(37),
      ADR1 => N3,
      ADR2 => bit_counter(6),
      ADR3 => read_receive_data_0_cmp_gt00001_1316,
      O => write_send_data_mux0026
    );
  write_send_data_38 : X_SFF
    generic map(
      LOC => "SLICE_X20Y49",
      INIT => '0'
    )
    port map (
      I => write_send_data_39_DYMUX_5525,
      CE => write_send_data_39_CEINV_5515,
      CLK => write_send_data_39_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_39_SRINV_5517,
      O => write_send_data(38)
    );
  write_send_data_mux00251 : X_LUT4
    generic map(
      INIT => X"FF02",
      LOC => "SLICE_X20Y49"
    )
    port map (
      ADR0 => N3,
      ADR1 => read_receive_data_0_cmp_gt00001_1316,
      ADR2 => bit_counter(6),
      ADR3 => write_send_data(38),
      O => write_send_data_mux0025
    );
  write_send_data_39 : X_SFF
    generic map(
      LOC => "SLICE_X20Y49",
      INIT => '0'
    )
    port map (
      I => write_send_data_39_DXMUX_5538,
      CE => write_send_data_39_CEINV_5515,
      CLK => write_send_data_39_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_39_SRINV_5517,
      O => write_send_data(39)
    );
  write_send_data_mux00081 : X_LUT4
    generic map(
      INIT => X"FF02",
      LOC => "SLICE_X19Y52"
    )
    port map (
      ADR0 => N3,
      ADR1 => read_receive_data_0_cmp_gt00001_1316,
      ADR2 => bit_counter(6),
      ADR3 => write_send_data(55),
      O => write_send_data_mux0008
    );
  write_send_data_56 : X_SFF
    generic map(
      LOC => "SLICE_X19Y52",
      INIT => '0'
    )
    port map (
      I => write_send_data_57_DYMUX_5567,
      CE => write_send_data_57_CEINV_5557,
      CLK => write_send_data_57_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_57_SRINV_5559,
      O => write_send_data(56)
    );
  write_send_data_mux00071 : X_LUT4
    generic map(
      INIT => X"AAAE",
      LOC => "SLICE_X19Y52"
    )
    port map (
      ADR0 => write_send_data(56),
      ADR1 => N3,
      ADR2 => bit_counter(6),
      ADR3 => read_receive_data_0_cmp_gt00001_1316,
      O => write_send_data_mux0007
    );
  write_send_data_57 : X_SFF
    generic map(
      LOC => "SLICE_X19Y52",
      INIT => '0'
    )
    port map (
      I => write_send_data_57_DXMUX_5580,
      CE => write_send_data_57_CEINV_5557,
      CLK => write_send_data_57_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_57_SRINV_5559,
      O => write_send_data(57)
    );
  write_send_data_mux00161 : X_LUT4
    generic map(
      INIT => X"F1F0",
      LOC => "SLICE_X20Y55"
    )
    port map (
      ADR0 => bit_counter(6),
      ADR1 => read_receive_data_0_cmp_gt00001_1316,
      ADR2 => write_send_data(47),
      ADR3 => N3,
      O => write_send_data_mux0016
    );
  write_send_data_48 : X_SFF
    generic map(
      LOC => "SLICE_X20Y55",
      INIT => '0'
    )
    port map (
      I => write_send_data_49_DYMUX_5609,
      CE => write_send_data_49_CEINV_5599,
      CLK => write_send_data_49_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_49_SRINV_5601,
      O => write_send_data(48)
    );
  write_send_data_mux00151 : X_LUT4
    generic map(
      INIT => X"CDCC",
      LOC => "SLICE_X20Y55"
    )
    port map (
      ADR0 => read_receive_data_0_cmp_gt00001_1316,
      ADR1 => write_send_data(48),
      ADR2 => bit_counter(6),
      ADR3 => N3,
      O => write_send_data_mux0015
    );
  write_send_data_49 : X_SFF
    generic map(
      LOC => "SLICE_X20Y55",
      INIT => '0'
    )
    port map (
      I => write_send_data_49_DXMUX_5622,
      CE => write_send_data_49_CEINV_5599,
      CLK => write_send_data_49_CLKINVNOT,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => write_send_data_49_SRINV_5601,
      O => write_send_data(49)
    );
  bit_counter_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X15Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => bit_counter(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => bit_counter_0_G
    );
  bit_counter_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X15Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => bit_counter(2),
      O => bit_counter_2_F
    );
  bit_counter_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X15Y79"
    )
    port map (
      ADR0 => bit_counter(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => bit_counter_2_G
    );
  bit_counter_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X15Y80"
    )
    port map (
      ADR0 => bit_counter(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => bit_counter_4_F
    );
  bit_counter_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X15Y80"
    )
    port map (
      ADR0 => VCC,
      ADR1 => bit_counter(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => bit_counter_4_G
    );
  bit_counter_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X15Y81"
    )
    port map (
      ADR0 => bit_counter(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => bit_counter_6_F
    );
  counter_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X49Y82"
    )
    port map (
      ADR0 => counter(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => counter_0_G
    );
  counter_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X49Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => counter(2),
      ADR3 => VCC,
      O => counter_2_F
    );
  counter_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X49Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => counter(3),
      ADR3 => VCC,
      O => counter_2_G
    );
  counter_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X49Y84"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => counter(4),
      O => counter_4_F
    );
  counter_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X49Y84"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => counter(5),
      ADR3 => VCC,
      O => counter_4_G
    );
  counter_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X49Y85"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => counter(6),
      O => counter_6_F
    );
  MDIO_OUTPUT_TFF_TMUX : X_BUF
    generic map(
      LOC => "PAD210",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mtrien_MDIO_1353,
      O => MDIO_T
    );
  MDIO_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD210",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mtridata_MDIO_1348,
      O => MDIO_O
    );
  data_out_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD220",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(10),
      O => data_out_10_O
    );
  data_out_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD218",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(11),
      O => data_out_11_O
    );
  data_out_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD217",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(12),
      O => data_out_12_O
    );
  data_out_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(13),
      O => data_out_13_O
    );
  data_out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD232",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(0),
      O => data_out_0_O
    );
  data_out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD227",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(1),
      O => data_out_1_O
    );
  data_out_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD215",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(14),
      O => data_out_14_O
    );
  data_out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(2),
      O => data_out_2_O
    );
  data_out_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD213",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(15),
      O => data_out_15_O
    );
  data_out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(3),
      O => data_out_3_O
    );
  data_out_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD5",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(4),
      O => data_out_4_O
    );
  data_out_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD226",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(5),
      O => data_out_5_O
    );
  data_out_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD225",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(6),
      O => data_out_6_O
    );
  data_out_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD223",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(7),
      O => data_out_7_O
    );
  data_out_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD222",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(8),
      O => data_out_8_O
    );
  data_out_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD221",
      PATHPULSE => 638 ps
    )
    port map (
      I => read_receive_data(9),
      O => data_out_9_O
    );
  counter_or0000_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X48Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => counter_or0000_F
    );
  MDC_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 638 ps
    )
    port map (
      I => Mtridata_MDC_1397,
      O => MDC_O
    );
  NlwBlock_nowyRXTX_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_nowyRXTX_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

