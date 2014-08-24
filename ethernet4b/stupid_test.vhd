-- Vhdl test bench created from schematic C:\Users\fafik\Dropbox\infa\git\ethernet\ethernet4b\stupid.sch - Sun Aug 24 00:48:15 2014
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
ENTITY stupid_stupid_sch_tb IS
END stupid_stupid_sch_tb;
ARCHITECTURE behavioral OF stupid_stupid_sch_tb IS 

   COMPONENT stupid
   PORT( clk	:	IN	STD_LOGIC; 
          start	:	IN	STD_LOGIC; 
          test	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL start	:	STD_LOGIC;
   SIGNAL test	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: stupid PORT MAP(
		clk => clk, 
		start => start, 
		test => test
   );

	process
	begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;
	
	start <= '1', '0' after 20 ns;

END;
