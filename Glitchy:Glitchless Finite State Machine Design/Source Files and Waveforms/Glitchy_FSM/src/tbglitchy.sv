`timescale 100ps/100ps 		//Time scale and time precision is 100ps

module tbglitchy;
				//Signals declared as registers 
reg rd;
reg ds;
reg go;
reg ws;
reg clk;
reg reset_n;

glitch glitchy(.*);		//Link to the glitchy.sv file where the state machine is implemented

parameter CYCLE = 2;		
parameter CYCLE_2 = 10;		//We want a period of 1ns -> 10*100ps 

initial begin 
	clk <= 0;
	forever #(CYCLE_2/2) clk = ~clk;	//Invert the output of the clock every 100ps * 10/2 = 500ps 
end
	
initial begin
	reset_n = 0;			//By default, reset_n = 0
	#(CYCLE_2*1.6) reset_n = 1;	//Assert reset_n at the second rising edge of the clock
end

initial begin 
	go = 0;				//By default, go = 0
	#(CYCLE_2*2.6) go = 1;		//Assert signal go 100ps after the 3rd rising edge
	#(CYCLE_2) go = 0;		//De-assert signal go 100ps after the 4th rising edge of the clock		
end  

initial begin
	ws = 0;				//By default, ws = 0
	#(CYCLE_2*3.6) ws = 1;		// Assert signal ws 100ps after the 4th rising edge of the clock
end

endmodule

