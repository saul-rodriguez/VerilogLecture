/*
 * Mux2to1 using if else
 *
*/

module mux2to1 (w0, w1, s, f);
input w0, w1, s;
output reg f;

always @(w0, w1, s)
begin
	f = w0; // default assignment. Dont forget it!
	if (s == 1)		
		f = w1;
end

endmodule


