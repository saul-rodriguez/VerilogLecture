
module flipflop_ar (D, Clock, Resetn, Q);
input D, Clock, Resetn;
output reg Q;

always @(posedge Clock, negedge Resetn)
	if (Resetn == 0)
		Q <= 0;
	else
		Q <= D;
endmodule

