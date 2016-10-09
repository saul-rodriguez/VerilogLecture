//count4_tb.v
 
module count4_tb();

//lines to drive
reg Clock, Resetn, E;

//output signals
wire [3:0] Q;

initial begin
    $dumpfile("count4.vcd");
    $dumpvars(0,my_count4);
    
    Resetn = 1;
    E = 0;
    Clock = 0;
    
    #2 Resetn = 0;
    #2 Resetn = 1;
    #2 E = 1;
    #200 $finish;   
    
end

always begin
    #5 Clock = ~Clock;
end

count4 my_count4(Clock,Resetn,E,Q);

endmodule

