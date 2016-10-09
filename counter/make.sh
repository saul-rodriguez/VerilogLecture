#sh make.sh
#
iverilog -o count4 count4.v count4_tb.v
vvp count4

