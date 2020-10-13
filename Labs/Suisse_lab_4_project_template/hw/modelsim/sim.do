--to use just type "do sim.do" in modelsim cmd prompt

restart
force Reset_n 0,0 15ns
force Reset_n 0,1 15ns
force Clk 0, 1 20ns -r 40ns
radix dec

--set CS and Write
force AS_CS 0, 1 10ns
force AS_Write 0, 1 10ns

--test writing to all registers
force AS_Adr 0, 0 30ns
force AS_DataWr 0, 1 30ns

force AS_Adr 0, 1 50ns
force AS_DataWr 1, 2 50ns

--this should start camera
force AS_Adr 1, 4 70ns
force AS_DataWr 2, 1 70ns


run 50us
