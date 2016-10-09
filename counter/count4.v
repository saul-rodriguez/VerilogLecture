//count4.v

module count4 (Clock, Resetn, E, Q);
input Clock, Resetn, E;
output reg [3:0] Q;

always @(posedge Clock, negedge Resetn)
	if (Resetn == 0)
		Q <= 0;
	else if (E)
		Q <= Q + 1;
endmodule
