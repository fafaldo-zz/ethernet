--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:28:24 08/16/2014
-- Design Name:   
-- Module Name:   C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/tx_test.vhd
-- Project Name:  ethernet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: new_tx_fifo_control_unit
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
 
ENTITY tx_test IS
END tx_test;
 
ARCHITECTURE behavior OF tx_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT new_tx_fifo_control_unit
    PORT(
         clkA : OUT  std_logic;
         clkB : OUT  std_logic;
         enA : OUT  std_logic;
         enB : OUT  std_logic;
         weB : OUT  std_logic;
         addrA : OUT  std_logic_vector(11 downto 0);
         addrB : OUT  std_logic_vector(10 downto 0);
         diB : OUT  std_logic_vector(7 downto 0);
         doA : IN  std_logic_vector(3 downto 0);
         empty : OUT  std_logic;
         full : OUT  std_logic;
         data_in : IN  std_logic_vector(7 downto 0);
         EOF : IN  std_logic;
         clk : IN  std_logic;
         Tx_Clk : IN  std_logic;
         Tx_En : OUT  std_logic;
         Tx_D : OUT  std_logic_vector(3 downto 0);
         PUSH : IN  std_logic;
         busy : OUT  std_logic;
         start : IN  std_logic;
         test : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal doA : std_logic_vector(3 downto 0) := (others => '0');
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal EOF : std_logic := '0';
   signal clk : std_logic := '0';
   signal Tx_Clk : std_logic := '0';
   signal PUSH : std_logic := '0';
   signal start : std_logic := '0';

 	--Outputs
   signal clkA : std_logic;
   signal clkB : std_logic;
   signal enA : std_logic;
   signal enB : std_logic;
   signal weB : std_logic;
   signal addrA : std_logic_vector(11 downto 0);
   signal addrB : std_logic_vector(10 downto 0);
   signal diB : std_logic_vector(7 downto 0);
   signal empty : std_logic;
   signal full : std_logic;
   signal Tx_En : std_logic;
   signal Tx_D : std_logic_vector(3 downto 0);
   signal busy : std_logic;
   signal test : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
   constant Tx_Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: new_tx_fifo_control_unit PORT MAP (
          clkA => clkA,
          clkB => clkB,
          enA => enA,
          enB => enB,
          weB => weB,
          addrA => addrA,
          addrB => addrB,
          diB => diB,
          doA => doA,
          empty => empty,
          full => full,
          data_in => data_in,
          EOF => EOF,
          clk => clk,
          Tx_Clk => Tx_Clk,
          Tx_En => Tx_En,
          Tx_D => Tx_D,
          PUSH => PUSH,
          busy => busy,
          start => start,
          test => test
        );
 
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   Tx_Clk_process :process
   begin
		Tx_Clk <= '0';
		wait for Tx_Clk_period/2;
		Tx_Clk <= '1';
		wait for Tx_Clk_period/2;
   end process;
 
	start <= '0', '1' after 70 ns, '0' after 90 ns;

END;
