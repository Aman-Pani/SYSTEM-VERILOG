iverilog -o ok.vvp testbench.sv design.sv
vvp ok.vvp
gtkwave dump.vcd