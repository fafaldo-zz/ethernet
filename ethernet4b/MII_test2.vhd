--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:51:33 03/21/2014
-- Design Name:   
-- Module Name:   C:/Users/fafik/Dropbox/infa/xilinx/ethernet4/MII_test2.vhd
-- Project Name:  ethernet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MII_RX
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
 
ENTITY MII_test2 IS
END MII_test2;
 
ARCHITECTURE behavior OF MII_test2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MII_RX
    PORT(
         recv_data : IN  std_logic_vector(3 downto 0);
         recv_strobe : IN  std_logic;
         recv_clock : IN  std_logic;
         recv_error : IN  std_logic;
         next_frame : IN  std_logic;
         data_received : OUT  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         busy : OUT  std_logic;
         ram_clk : IN  std_logic;
         ram_enable : IN  std_logic;
         ram_output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal recv_data : std_logic_vector(3 downto 0) := (others => '0');
   signal recv_strobe : std_logic := '0';
   signal recv_clock : std_logic := '0';
   signal recv_error : std_logic := '0';
   signal next_frame : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal ram_clk : std_logic := '0';
   signal ram_enable : std_logic := '0';

 	--Outputs
   signal data_received : std_logic;
   signal busy : std_logic;
   signal ram_output : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant recv_clock_period : time := 100 ns;
   constant clk_period : time := 20 ns;
   constant ram_clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MII_RX PORT MAP (
          recv_data => recv_data,
          recv_strobe => recv_strobe,
          recv_clock => recv_clock,
          recv_error => recv_error,
          next_frame => next_frame,
          data_received => data_received,
          clk => clk,
          reset => reset,
          busy => busy,
          ram_clk => ram_clk,
          ram_enable => ram_enable,
          ram_output => ram_output
        );

   -- Clock process definitions
   recv_clock_process :process
   begin
		recv_clock <= '0';
		wait for recv_clock_period/2;
		recv_clock <= '1';
		wait for recv_clock_period/2;
   end process;
 
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   ram_clk_process :process
   begin
		ram_clk <= '0';
		wait for ram_clk_period/2;
		ram_clk <= '1';
		wait for ram_clk_period/2;
   end process;
 

   recv_data <= "1001";
	recv_strobe <= '1', '0' after 100000 ns;

END;
