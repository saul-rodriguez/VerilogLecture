module shift3 (w, Clock, Q);
input w, Clock;
output reg [1:3] Q;

always @(posedge Clock)
begin
//Correct non-blocking assignment

Q[3] <= w;
Q[2] <= Q[3];
Q[1] <= Q[2];

//The following blocking assignments will produce a bug!
/*
Q[3] = w;
Q[2] = Q[3];
Q[1] = Q[2];
*/

end
endmodule
