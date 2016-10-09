/*
 * Mux2to1 using if else
 *
*/

module mux2to1 (w0, w1, s, f);
input w0, w1, s;
output reg f;

always @(w0, w1, s)
begin
	if (s == 0)
		f = w0;
	else
		f = w1;
end

endmodule


