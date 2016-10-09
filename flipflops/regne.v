module regne (D, Clock, Resetn, E, Q);
parameter n = 4;
input [n-1:0] D;
input Clock, Resetn, E;
output reg [n-1:0] Q;

always @(posedge Clock, negedge Resetn)
	if (Resetn == 0)
		Q <= 0;
	else if (E)
		Q <= D;
endmodule

