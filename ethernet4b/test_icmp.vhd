-- Vhdl test bench created from schematic C:\Users\fafik\Dropbox\infa\git\ethernet\ethernet4b\CU_test1.sch - Mon Aug 25 21:09:23 2014
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY CU_test1_CU_test1_sch_tb IS
END CU_test1_CU_test1_sch_tb;
ARCHITECTURE behavioral OF CU_test1_CU_test1_sch_tb IS 

   COMPONENT CU_test1
   PORT( clk	:	IN	STD_LOGIC; 
          E_RX_D	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          E_RX_CLK	:	IN	STD_LOGIC; 
          E_RX_DV	:	IN	STD_LOGIC; 
          full	:	OUT	STD_LOGIC; 
          test	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL E_RX_D	:	STD_LOGIC_VECTOR (3 DOWNTO 0) := (others=>'0');
   SIGNAL E_RX_CLK	:	STD_LOGIC := '0';
   SIGNAL E_RX_DV	:	STD_LOGIC := '0';
   SIGNAL full	:	STD_LOGIC;
   SIGNAL test	:	STD_LOGIC;

BEGIN

   UUT: CU_test1 PORT MAP(
		clk => clk, 
		E_RX_D => E_RX_D, 
		E_RX_CLK => E_RX_CLK, 
		E_RX_DV => E_RX_DV, 
		full => full, 
		test => test
   );

	process (clk)
	begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;
	
	process (E_RX_CLK)
	begin
		E_RX_CLK <= '0';
		wait for 200 ns;
		E_RX_CLK <= '1';
		wait for 200 ns;
	end process;
	
	E_RX_D <= "0000", "0101" after 200 ns, "1101" after 600 ns, "0011" after 1000 ns, "0011" after 1400 ns;
	E_RX_DV <= '0', '1' after 200 ns, '0' after 1800 ns;

END;
