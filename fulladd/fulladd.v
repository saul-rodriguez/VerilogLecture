/*
 * full-adder implemented using case statement
 *
*/


// Full adder
module fulladd (Cin, x, y, s, Cout);
input Cin, x, y;
output reg s, Cout;

always @(Cin, x, y)
begin
	case ( {Cin, x, y} )
		3'b000: {Cout, s} = 'b00;
		3'b001: {Cout, s} = 'b01;
		3'b010: {Cout, s} = 'b01;
		3'b011: {Cout, s} = 'b10;
		3'b100: {Cout, s} = 'b01;
		3'b101: {Cout, s} = 'b10;
		3'b110: {Cout, s} = 'b10;
		3'b111: {Cout, s} = 'b11;
		//it is good practice to use a default assignment, 
		//otherwise a latch may be inferred for non used
		//combinations
	endcase
end
endmodule


