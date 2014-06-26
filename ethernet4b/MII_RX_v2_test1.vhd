--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:39:29 06/19/2014
-- Design Name:   
-- Module Name:   C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/MII_RX_v2_test1.vhd
-- Project Name:  ethernet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MII_RX_v2
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
 
ENTITY MII_RX_v2_test1 IS
END MII_RX_v2_test1;
 
ARCHITECTURE behavior OF MII_RX_v2_test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MII_RX_v2
    PORT(
         clkA : IN  std_logic;
         clkB : IN  std_logic;
         enA : IN  std_logic;
         enB : IN  std_logic;
         weA : IN  std_logic;
         weB : IN  std_logic;
         addrA : IN  std_logic_vector(11 downto 0);
         addrB : IN  std_logic_vector(10 downto 0);
         diA : IN  std_logic_vector(3 downto 0);
         diB : IN  std_logic_vector(7 downto 0);
         doA : OUT  std_logic_vector(3 downto 0);
         doB : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clkA : std_logic := '0';
   signal clkB : std_logic := '0';
   signal enA : std_logic := '0';
   signal enB : std_logic := '0';
   signal weA : std_logic := '0';
   signal weB : std_logic := '0';
   signal addrA : std_logic_vector(11 downto 0) := (others => '0');
   signal addrB : std_logic_vector(10 downto 0) := (others => '0');
   signal diA : std_logic_vector(3 downto 0) := (others => '0');
   signal diB : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal doA : std_logic_vector(3 downto 0);
   signal doB : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clkA_period : time := 100 ns;
   constant clkB_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MII_RX_v2 PORT MAP (
          clkA => clkA,
          clkB => clkB,
          enA => enA,
          enB => enB,
          weA => weA,
          weB => weB,
          addrA => addrA,
          addrB => addrB,
          diA => diA,
          diB => diB,
          doA => doA,
          doB => doB
        );

   -- Clock process definitions
   clkA_process :process
   begin
		clkA <= '0';
		wait for clkA_period/2;
		clkA <= '1';
		wait for clkA_period/2;
   end process;
 
   clkB_process :process
   begin
		clkB <= '0';
		wait for clkB_period/2;
		clkB <= '1';
		wait for clkB_period/2;
   end process;
 
	enA <= '1'; 
	weA <= '0', '1' after 50 ns, '0' after 650 ns;
	addrA <= "000000000000", "000000000001" after 150 ns, "000000000010" after 250 ns, "000000000011" after 350 ns, "000000000100" after 450 ns, "000000000101" after 550 ns;
	diA <= "0000", "0001" after 150 ns, "0010" after 250 ns, "0011" after 350 ns, "0100" after 450 ns, "0101" after 550 ns;
	
	enB <= '0', '1' after 350 ns;
	addrB <= "00000000000", "00000000001" after 750 ns, "00000000010" after 850 ns, "00000000011" after 950 ns, "00000000100" after 1050 ns, "00000000101" after 1150 ns;
	

END;
