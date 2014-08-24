-- Vhdl test bench created from schematic C:\Users\fafik\Dropbox\infa\git\ethernet\ethernet4b\test_ekstra.sch - Sun Aug 24 00:41:46 2014
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
ENTITY test_ekstra_test_ekstra_sch_tb IS
END test_ekstra_test_ekstra_sch_tb;
ARCHITECTURE behavioral OF test_ekstra_test_ekstra_sch_tb IS 

   COMPONENT test_ekstra
   PORT( clk	:	IN	STD_LOGIC; 
          reset	:	IN	STD_LOGIC; 
          test	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          ROT_A	:	IN	STD_LOGIC; 
          ROT_B	:	IN	STD_LOGIC; 
          RX_DV	:	IN	STD_LOGIC; 
          RX_CLK	:	IN	STD_LOGIC; 
          RX_D	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          sss	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL reset	:	STD_LOGIC;
   SIGNAL test	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL ROT_A	:	STD_LOGIC;
   SIGNAL ROT_B	:	STD_LOGIC;
   SIGNAL RX_DV	:	STD_LOGIC;
   SIGNAL RX_CLK	:	STD_LOGIC;
   SIGNAL RX_D	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL sss	:	STD_LOGIC;

BEGIN

   UUT: test_ekstra PORT MAP(
		clk => clk, 
		reset => reset, 
		test => test, 
		ROT_A => ROT_A, 
		ROT_B => ROT_B, 
		RX_DV => RX_DV, 
		RX_CLK => RX_CLK, 
		RX_D => RX_D, 
		sss => sss
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
