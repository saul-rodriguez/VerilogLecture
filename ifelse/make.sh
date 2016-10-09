#sh make.sh
#
iverilog -o mux2to1 mux2to1.v mux2to1_tb.v
vvp mux2to1

