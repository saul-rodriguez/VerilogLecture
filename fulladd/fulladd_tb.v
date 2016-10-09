
module mux2to1_tb();

//lines to drive declared as variables
reg  Cin, x, y;

//outputs signals declared as wires
wire s, Cout;

initial begin
	$dumpfile("fulladd.vcd");
    $dumpvars(0,my_fulladd);
 
	Cin = 0; x = 0;	y = 0;	//Time 0
	
	#2  Cin = 0; x =0;	y = 1;	//#2 introduces a delay = 2 simulation time
	#2  Cin = 0; x =1;	y = 0;	
	#2  Cin = 0; x =1;	y = 1;
	#2  Cin = 1; x =0;	y = 0;		
	#2  Cin = 1; x =0;	y = 1;		
	#2  Cin = 1; x =1;	y = 0;		
	#2  Cin = 1; x =1;	y = 0;		
	#2  Cin = 1; x =1;	y = 1;		
	#2  Cin = 0; x =0;	y = 0;		
	#10 $finish;

end

fulladd my_fulladd(Cin,x,y,s,Cout);

endmodule
