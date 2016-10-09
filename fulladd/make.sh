#sh make.sh
#
iverilog -o fulladd fulladd.v fulladd_tb.v
vvp fulladd

