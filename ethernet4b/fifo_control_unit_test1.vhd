--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:06:14 06/24/2014
-- Design Name:   
-- Module Name:   C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/fifo_control_unit_test1.vhd
-- Project Name:  ethernet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fifo_control_unit
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
 
ENTITY fifo_control_unit_test1 IS
END fifo_control_unit_test1;
 
ARCHITECTURE behavior OF fifo_control_unit_test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fifo_control_unit
    PORT(
         clkA : OUT  std_logic;
         clkB : OUT  std_logic;
         enA : OUT  std_logic;
         enB : OUT  std_logic;
         weA : OUT  std_logic;
         addrA : OUT  std_logic_vector(11 downto 0);
         addrB : OUT  std_logic_vector(10 downto 0);
         diA : OUT  std_logic_vector(3 downto 0);
         doB : IN  std_logic_vector(7 downto 0);
         empty : OUT  std_logic;
         full : OUT  std_logic;
         data_out : OUT  std_logic_vector(7 downto 0);
         EOF : OUT  std_logic;
         clk : IN  std_logic;
         Rx_Clk : IN  std_logic;
         Rx_DV : IN  std_logic;
         Rx_D : IN  std_logic_vector(3 downto 0);
         POP : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal doB : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal Rx_Clk : std_logic := '0';
   signal Rx_DV : std_logic := '0';
   signal Rx_D : std_logic_vector(3 downto 0) := (others => '0');
   signal POP : std_logic := '0';

 	--Outputs
   signal clkA : std_logic;
   signal clkB : std_logic;
   signal enA : std_logic;
   signal enB : std_logic;
   signal weA : std_logic;
   signal addrA : std_logic_vector(11 downto 0);
   signal addrB : std_logic_vector(10 downto 0);
   signal diA : std_logic_vector(3 downto 0);
   signal empty : std_logic;
   signal full : std_logic;
   signal data_out : std_logic_vector(7 downto 0);
   signal EOF : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
   constant Rx_Clk_period : time := 200 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fifo_control_unit PORT MAP (
          clkA => clkA,
          clkB => clkB,
          enA => enA,
          enB => enB,
          weA => weA,
          addrA => addrA,
          addrB => addrB,
          diA => diA,
          doB => doB,
          empty => empty,
          full => full,
          data_out => data_out,
          EOF => EOF,
          clk => clk,
          Rx_Clk => Rx_Clk,
          Rx_DV => Rx_DV,
          Rx_D => Rx_D,
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
 
	doB <= "10101010";
	POP <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 750 ns, '0' after 770 ns, '1' after 790 ns, '0' after 810 ns, '1' after 830 ns, '0' after 850 ns, '1' after 870 ns, '0' after 890 ns, '1' after 910 ns, '0' after 930 ns;
	Rx_D <= "1001";
	Rx_Clk <= '0', '1' after 200 ns, '0' after 300 ns, '1' after 400 ns, '0' after 500 ns, '1' after 600 ns, '0' after 700 ns; 

END;
