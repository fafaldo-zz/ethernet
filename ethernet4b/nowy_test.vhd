--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:24:52 03/11/2014
-- Design Name:   
-- Module Name:   C:/Users/fafik/Dropbox/infa/xilinx/ethernet2/nowy_test.vhd
-- Project Name:  ethernet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nowyRXTX
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY nowy_test IS
END nowy_test;
 
ARCHITECTURE behavior OF nowy_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nowyRXTX
    PORT(
         data_in : IN  std_logic_vector(15 downto 0);
         data_out : OUT  std_logic_vector(15 downto 0);
         phy_addr : IN  std_logic_vector(4 downto 0);
         reg_addr : IN  std_logic_vector(4 downto 0);
         write_read : IN  std_logic;
         strt : IN  std_logic;
         busy : OUT  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         MDC : OUT  std_logic;
         MDIO : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal phy_addr : std_logic_vector(4 downto 0) := (others => '0');
   signal reg_addr : std_logic_vector(4 downto 0) := (others => '0');
   signal write_read : std_logic := '0';
   signal strt : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

	--BiDirs
   signal MDIO : std_logic;

 	--Outputs
   signal data_out : std_logic_vector(15 downto 0);
   signal busy : std_logic;
   signal MDC : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nowyRXTX PORT MAP (
          data_in => data_in,
          data_out => data_out,
          phy_addr => phy_addr,
          reg_addr => reg_addr,
          write_read => write_read,
          strt => strt,
          busy => busy,
          reset => reset,
          clk => clk,
          MDC => MDC,
          MDIO => MDIO
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   write_read <= '1', '0' after 2000000 ns;
	phy_addr <= "10101";
	reg_addr <= "10101";
	data_in <= "1111000011110000";
	strt <= '0', '1' after 130 ns, '0' after 170 ns, '1' after 1000070 ns, '0' after 1000110 ns, '1' after 2000070 ns, '0' after 2000110 ns;
	
	MDIO <= 'Z', '1' after 2019600 ns, '0' after 2021200 ns, '1' after 2022800 ns, '0' after 2024400 ns, 'Z' after 2026000 ns;
	
--	reset <= '0', '1' after 1000000 ns, '0' after 1000040 ns;

END;
