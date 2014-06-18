--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:29:29 03/05/2014
-- Design Name:   
-- Module Name:   C:/Users/fafik/Dropbox/infa/xilinx/ethernet/rxtx_test.vhd
-- Project Name:  ethernet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SMI_RXTX
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
 
ENTITY rxtx_test IS
END rxtx_test;
 
ARCHITECTURE behavior OF rxtx_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SMI_RXTX
    PORT(
         data_in : IN  std_logic_vector(15 downto 0);
         data_out : OUT  std_logic_vector(15 downto 0);
         phy_addr : IN  std_logic_vector(4 downto 0);
         reg_addr : IN  std_logic_vector(4 downto 0);
         write_read : IN  std_logic;
         start : IN  std_logic;
         busy : OUT  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         clk_div : IN  std_logic;
         MDC : OUT  std_logic;
         MDIO : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal phy_addr : std_logic_vector(4 downto 0) := (others => '0');
   signal reg_addr : std_logic_vector(4 downto 0) := (others => '0');
   signal write_read : std_logic := '0';
   signal start : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal clk_div : std_logic := '0';

	--BiDirs
   signal MDIO : std_logic;

 	--Outputs
   signal data_out : std_logic_vector(15 downto 0);
   signal busy : std_logic;
   signal MDC : std_logic;

   -- Clock period definitions
   constant clk_period : time := 40 ns;
   constant clk_div_period : time := 400 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SMI_RXTX PORT MAP (
          data_in => data_in,
          data_out => data_out,
          phy_addr => phy_addr,
          reg_addr => reg_addr,
          write_read => write_read,
          start => start,
          busy => busy,
          reset => reset,
          clk => clk,
          clk_div => clk_div,
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
 
   clk_div_process :process
   begin
		clk_div <= '0';
		wait for clk_div_period/2;
		clk_div <= '1';
		wait for clk_div_period/2;
   end process;
 
	

END;
