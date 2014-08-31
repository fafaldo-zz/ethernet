--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:39:52 08/24/2014
-- Design Name:   
-- Module Name:   C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/CU_testbench1.vhd
-- Project Name:  ethernet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CUnit
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
 
ENTITY CU_testbench1 IS
END CU_testbench1;
 
ARCHITECTURE behavior OF CU_testbench1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CUnit
    PORT(
         clk : IN  std_logic;
         data_in : IN  std_logic_vector(7 downto 0);
         empty : IN  std_logic;
         EOF : IN  std_logic;
         ICMP_recognized : IN  std_logic;
         reset : IN  std_logic;
         frame_reset : OUT  std_logic;
         enable : OUT  std_logic;
         POP : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal empty : std_logic := '0';
   signal EOF : std_logic := '0';
   signal ICMP_recognized : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal frame_reset : std_logic;
   signal enable : std_logic;
   signal POP : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CUnit PORT MAP (
          clk => clk,
          data_in => data_in,
          empty => empty,
          EOF => EOF,
          ICMP_recognized => ICMP_recognized,
          reset => reset,
          frame_reset => frame_reset,
          enable => enable,
          POP => POP
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

END;
