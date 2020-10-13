-- #############################################################################
-- camera.vhd
-- Controlling the D5M LT24 camera from the fpga
--
-- BOARD         : DE0-Nano-SoC from Terasic
-- Author        : Abhi Kamboj
-- Revision      : 1.0
-- Creation date : 13/12/2019
--
-- 3 Interfaces
-- Camera Interface: gets data from camera and puts it in internal FIFO
-- Avalon Slave: controls camera and reads configuration from avalon bus
-- Avalon Master: outputs camera image from FIFO to memory using avalon bus
-- #############################################################################

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity camera is
	port(
		Clk			: in		std_logic;
		Reset_n		: in 		std_logic;
		
		--Camera interface
		Cam_D       		: in		std_logic_vector(11 downto 0); --pixel data
		Cam_FVAL    		: in    	std_logic;
		Cam_LVAL    		: in    	std_logic;
		Cam_PIXCLK  		: in    	std_logic;
		Cam_RESET_N 		: out   	std_logic;
		Cam_SCLK    		: inout 	std_logic;
		Cam_SDATA   		: inout 	std_logic;
		Cam_STROBE  		: in    	std_logic;
		Cam_TRIGGER 		: out   	std_logic;
		Cam_XCLKIN  		: out   	std_logic; --output processor clk here
		
		--Avalon Slave
		AS_Adr		: in		std_logic_vector(2 downto 0);
		AS_CS			: in		std_logic;
		AS_Write		: in 		std_logic;
		AS_Read		: in		std_logic;
		AS_DataWr	: in 		std_logic_vector(31 downto 0);
		AS_DataR		: out		std_logic_vector(31 downto 0);
		
		--Using Avalon-ST (STreaming) Dual Clock FIFO
		--Streaming info: https://www.intel.com/content/www/us/en/programmable/documentation/nik1412467993397.html#nik1412467963376
		--Avalon Streaming Source (FIFO)
		AStr_in_data 	: out std_logic_vector(31 downto 0);
		AStr_in_valid 	: out std_logic;
		AStr_in_ready	: in std_logic;
		
		out_pixCLK		: out std_logic; --to connect to the FIFO
		
		--Avalon Streaming Sink (FIFO)
		AStr_Out		: in std_logic_vector(7 downto 0)
		
		
--		FIFO Explanation: https://www.intel.com/content/www/us/en/programmable/documentation/sfo1400787952932.html#iga1401395563779
--		Default mode—The core accepts incoming data on the in interface (Avalon-ST data sink) 
--		and forwards it to the out interface (Avalon-ST data source). 
--		The core asserts the valid signal on the Avalon-ST source interface to 
--		indicate that data is available at the interface.

	);
end entity camera;

architecture rtl of camera is

	--config registers
	signal CamAddr			:	std_logic_vector(31 downto 0) := (others => '0'); --where to start outputting data in memory
	signal CamLength		:	std_logic_vector(15 downto 0) := (others => '0'); --how many points to output in memory (so you know when to wrap around)
	signal CamComm			:	std_logic_vector(7 downto 0) 	:= (others => '0');	 --0 = we are outputting to this peripheral or 1 = using i2c to camera registers
	signal CamStatus		:	std_logic_vector(7 downto 0) 	:= (others => '0');	--?
	signal CamStart		:	std_logic_vector(7 downto 0) 	:= (others => '0'); 
	signal CamStop			:	std_logic_vector(7 downto 0) 	:= (others => '0');
	signal CamSnapshot	:	std_logic_vector(7 downto 0) 	:= (others => '0'); --for snapshot mode (trigger everytime you want a frame from camera)
	
	--internal signals
	signal cam_on			: std_logic := '0'; -- start and stop flips this bit
	signal data_state		: std_logic_vector(1 downto 0) := "00";
	signal data_fifo		: std_logic_vector(31 downto 0) := (others => '0');
	signal read_fifo		: std_logic := '0';
	
begin
	--Avalon Slave Read/Write
	pAvalon_Slave : Process(Clk, Reset_n)
	begin
		if Reset_n='0' then
			CamAddr			<= (others => '0');
			CamLength		<= (others => '0');
			CamComm			<= (others => '0');
			CamStatus		<= (others => '0');
			CamStart			<= (others => '0');
			CamStop			<= (others => '0');
			CamSnapshot		<= (others => '0');
			Cam_RESET_N 	<=	'0'; 
		else 			-- do ther reading and writing here depending on the Read and Write
			if rising_edge(Clk) and AS_CS = '1' then
				if AS_Write = '1' then
					case AS_Adr is
						when "000" => CamAddr <= AS_DataWr;
						when "001" => CamLength <= AS_DataWr(15 downto 0);
						when "010" => CamComm <= AS_DataWr(7 downto 0);
						when "011" => CamStatus <= AS_DataWr(7 downto 0);
						when "100" => CamStart <= AS_DataWr(7 downto 0);
						when "101" => CamStop <= AS_DataWr(7 downto 0);
						when "110" => CamSnapshot <= AS_DataWr(7 downto 0);
						when others => null;
					end case;
				end if;
				if AS_Read = '1' then
					case AS_Adr is
						when "000" => AS_DataR <= CamAddr;
						when "001" => AS_DataR(15 downto 0) <= CamLength;
						when "010" => AS_DataR(7 downto 0) <= CamComm;
						when "011" => AS_DataR(7 downto 0) <= CamStatus;
						when "100" => AS_DataR(7 downto 0) <= CamStart;
						when "101" => AS_DataR(7 downto 0) <= CamStop;
						when "110" => AS_DataR(7 downto 0) <= CamSnapshot;
						when others => null;
					end case;
				end if;
			end if;
		end if;
	end process pAvalon_Slave;


	--Camera Interface
	out_pixClk <= Cam_PIXCLK; --attach FIFO's inClk to the PIXCLK
	--AStr_outClk <= Clk; -- attach FIFO's outClk to global Clk
	
	pGet_Data : Process(Cam_PIXCLK)
	begin
	--page 30 of datasheet says capture data on falling edge of PIXCLK
		if falling_edge(Cam_PIXCLK) and Cam_FVAL = '1'and Cam_LVAL = '1' and cam_on = '1' then
			--add data to FIFO
			if AStr_in_ready = '0' then
				--change to wait state
			else
				case data_state is
					when "00" => data_fifo(7 downto 0) <= std_logic_vector(unsigned(Cam_D)*to_unsigned(256/4096,Cam_D'length))(7 downto 0);
						data_state <= "01";
					when "01" => data_fifo(15 downto 8) <= std_logic_vector(unsigned(Cam_D)*to_unsigned(256/4096,Cam_D'length))(7 downto 0);
						data_state <= "10";
					when "1 	0" => data_fifo(23 downto 16) <= std_logic_vector(unsigned(Cam_D)*to_unsigned(256/4096,Cam_D'length))(7 downto 0);
						data_state <= "11";
					when "11" => data_fifo(31 downto 24) <= std_logic_vector(unsigned(Cam_D)*to_unsigned(256/4096,Cam_D'length))(7 downto 0);
						data_state <= "00"; 
						Astr_in_valid <= '1';
						AStr_in_data <= data_state; --scale 12 bits down to 8
				end case;
			end if;
		end if;
	end process pGet_Data;
	
	
	pStartStop_Cam : Process(camStart, camStop)
	begin
	--this process prioritizes camStart and makes it so camStart has to be zero for camStop to work
		if camStart(0)='1' then 
			cam_on <= '1';
		else 
			if camStop(0)='1' then
			cam_on <='0';
			end if;
		end if;
	end process pStartStop_Cam;
	
	
	--Avalon Master
	
end rtl;