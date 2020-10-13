-- Design of a simple parallel port
-- Avalon slave unit
-- Parallel Port with programmable direction bit by bit on 8 bits
--
-- 3 address:
-- 0: data
-- 1: direction 0: input (reset state), 1: output
-- 2: read data pin Read only

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
ENTITY Avalon_SGPIO IS
	PORT(
		Clk : IN std_logic;
		nReset : IN std_logic;
		CS : IN std_logic;
		Rd : IN std_logic;
		Wr : IN std_logic;
		RDData : OUT std_logic_vector (7 DOWNTO 0);
		WRData : IN std_logic_vector (7 DOWNTO 0);
		Adr : IN std_logic_vector (1 DOWNTO 0);
		PortP : INOUT std_logic_vector (7 DOWNTO 0)
);
END Avalon_SGPIO ; 

ARCHITECTURE bhv OF Avalon_SGPIO IS
	signal iRegPort : std_logic_vector (7 DOWNTO 0); -- internal registers
	signal iRegDir : std_logic_vector (7 DOWNTO 0); -- internal registers
	signal iRegPin : std_logic_vector (7 DOWNTO 0); -- Driver for reading pin value
BEGIN


-- Process to write internal registers through Avalon bus interface
-- Synchronous access in rising_edge of clk
-- Addresses allows to select write registers if CS and Wr activated
WrReg: -- Write by Avalon slave access
	Process(Clk, nReset)
	Begin
		if nReset = '0' then
			iRegDir <= (others => '0'); -- input at reset
			iRegPort <= (others => '0'); -- Port value = 0 at reset
		elsif rising_edge(Clk) then
			If (CS = '1') and (Wr = '1') then
				case Adr is
					when "00" =>
						iRegPort <= WRData;
					When "01" =>
						iRegDir <= WRData;
					When others =>
						null;
				End case;
			End if;
		End if ;
	end process WrReg ; 
	
-- internal buffer for reading external pin value

iRegPin <= PortP; -- Parallel Port direct access

-- Process to read the different sources of data by the Avalon bus interface
-- could be sometimes better with synchronous access on rising_edge of clk with 1 wait cycle

RdReg: -- Read by Avalon slave access
	Process(CS, Rd, Adr, iRegPort, iRegDir, iRegPin)
	Begin
		RDData <= (others => '0');
		If (CS = '1') and (Rd = '1') then
			case Adr is
				when "00" =>
					RDData <= iRegPort ;
				when "01" =>
					RDData <= iRegDir ;
				when "10" =>
					RDData <= iRegPin;
				When others =>
					RDData <= (others => '0');
			End case;
		End if;
End process RdReg;

-- Process to control the buffer output for external output accesses or selecting input direction
-- and putting the output in Z (tri-state) state

PortIO: -- Effect on Parallel port
	process(iRegPort, iRegDir)
		begin
		for i in 0 to 7 loop
			if iRegDir(i) = '1' then
				PortP(i) <= iRegPort(i);
			else
				PortP(i) <= 'Z';
			end if;
		End loop;
	end process;
	
END bhv;