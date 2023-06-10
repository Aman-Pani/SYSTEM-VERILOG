iverilog -o ok.vvp testbench.v design.v
vvp ok.vvp
gtkwave dump.vcd