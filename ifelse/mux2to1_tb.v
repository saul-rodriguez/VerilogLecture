
module mux2to1_tb();

//lines to drive declared as variables
reg w0, w1, s;

//outputs signals declared as wires
wire f;

initial begin
	$dumpfile("mux2to1.vcd");
    $dumpvars(0,my_mux2to1);
 
	s = 0; w1 = 0;	w0 = 0;	//Time 0
	
	#1  s = 0; w1 = 0;	w0 = 1;	//#1 introduces a delay =  1 simulation time
	#1  s = 0; w1 = 1;	w0 = 0;	
	#1  s = 0; w1 = 1;	w0 = 1;
	#1  s = 1; w1 = 0;	w0 = 0;		
	#1  s = 1; w1 = 0;	w0 = 1;		
	#1  s = 1; w1 = 1;	w0 = 0;		
	#1  s = 1; w1 = 1;	w0 = 0;		
	#1  s = 1; w1 = 1;	w0 = 1;		
	#1  s = 0; w1 = 0;	w0 = 0;		
	#10 $finish;

end

mux2to1 my_mux2to1(w0,w1,s,f);
endmodule
