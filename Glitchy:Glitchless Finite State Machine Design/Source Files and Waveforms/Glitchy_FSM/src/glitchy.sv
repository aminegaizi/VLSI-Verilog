
module glitch( 	output 	logic rd, ds,
		input 	go, ws, clk, reset_n); 	//Module declaration, "rd" and "ds" are logic output signals
						//"go", "ws", "clk" and "reset_n" are input signals
	enum reg[1:0]{ 	IDLE = 2'b00,		//Defining the states of the state machine
			READ = 2'b01,
			DLY  = 2'b10,
			DONE = 2'b11
		
			} glitch_ps, glitch_ns;

	always_ff @(posedge clk, negedge reset_n)
		
		if(!reset_n)				//if reset_n is 0, go to the "IDLE" state
			glitch_ps <= IDLE;
		else 
			glitch_ps <= glitch_ns;		//Else, present state becomes next state 
	

	always_comb begin
		
		rd = 1'b0; //default state	//By default, output logic signals are equal to 0
		ds = 1'b0; //default state

		unique case (glitch_ps)
		
			IDLE : 	if(go) 	glitch_ns = READ;	//Present state is IDLE and "go" is asserted, go to READ state
				else   	glitch_ns = IDLE;	//Else, stay in IDLE state
		
			READ :	begin
					rd = 1'b1;			//Present state is READ, assert "rd" logic output signal
					glitch_ns = DLY;		//Next state will be DLY 
				end //state READ  

			DLY : 	begin
					rd = 1'b1;			//"rd" logic output signal stays asserted 
					if(!ws)	glitch_ns = DONE;	//if "ws" asserted: next state will be DONE 
					else 	glitch_ns = READ;	//else: next state will be READ 
				end //state DLY 

			DONE : 	begin
					ds = 1'b1;			//Assert "ds" logic output signal 
					glitch_ns = IDLE;		//Next state will be IDLE 
				end //state DONE 
 		
		endcase //Unique case(glitch_os) 

	end  //always comb block
endmodule //glitch module 
