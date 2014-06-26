--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:56:37 06/19/2014
-- Design Name:   
-- Module Name:   C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/control_unit_test1.vhd
-- Project Name:  ethernet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: control_unit
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
 
ENTITY control_unit_test1 IS
END control_unit_test1;
 
ARCHITECTURE behavior OF control_unit_test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_unit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         data_in : IN  std_logic_vector(3 downto 0);
         data_received_in : IN  std_logic;
         interrupt : IN  std_logic;
         crc_en : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal data_in : std_logic_vector(3 downto 0) := (others => '0');
   signal data_received_in : std_logic := '0';
   signal interrupt : std_logic := '0';

 	--Outputs
   signal crc_en : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit PORT MAP (
          clk => clk,
          reset => reset,
          data_in => data_in,
          data_received_in => data_received_in,
          interrupt => interrupt,
          crc_en => crc_en
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	reset <= '0';
	data_received_in <= '0', '1' after 100 ns, '0' after 120 ns;
	interrupt <= '0', '1' after 500 ns, '0' after 520 ns;

END;
