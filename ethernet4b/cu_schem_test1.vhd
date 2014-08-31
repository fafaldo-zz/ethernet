-- Vhdl test bench created from schematic C:\Users\fafik\Dropbox\infa\git\ethernet\ethernet4b\CU_test1.sch - Sun Aug 24 19:47:51 2014
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
   PORT( clk	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;

BEGIN

   UUT: CU_test1 PORT MAP(
		clk => clk
   );

	process
	begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;

END;
