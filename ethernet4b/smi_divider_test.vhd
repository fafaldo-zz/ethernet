--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:10:19 03/04/2014
-- Design Name:   
-- Module Name:   C:/Users/fafik/Dropbox/infa/xilinx/ethernet/smi_divider_test.vhd
-- Project Name:  ethernet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SMI_divider
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
 
ENTITY smi_divider_test IS
END smi_divider_test;
 
ARCHITECTURE behavior OF smi_divider_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SMI_divider
    PORT(
         clk_in : IN  std_logic;
         clk_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_in : std_logic := '0';

 	--Outputs
   signal clk_out : std_logic;

   -- Clock period definitions
   constant clk_in_period : time := 10 ns;
   constant clk_out_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SMI_divider PORT MAP (
          clk_in => clk_in,
          clk_out => clk_out
        );

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '0';
		wait for clk_in_period/2;
		clk_in <= '1';
		wait for clk_in_period/2;
   end process;

END;
