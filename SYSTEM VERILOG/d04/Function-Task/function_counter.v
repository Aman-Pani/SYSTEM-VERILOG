//design
module function_count(input [7:0] data_in, output reg [3:0] data_out);
  
  always @(data_in)
    data_out = count_is_in_byte(data_in);
  
  //task declaration
  function [3:0]count_is_in_byte(input [7:0] data_in);
    integer i;
    begin 
      count_is_in_byte = 0;
      
      for(i=0;i<=7;i++)
        if(data_in[i] == 1)
          count_is_in_byte = count_is_in_byte+1;
    end
  endfunction
endmodule


//testbench
module count_tb;  
  reg [7:0] d_in;
  wire [3:0] d_out;
  
  function_count(d_in,d_out);

  initial begin 
    $display("the counting sequence is given by:");
    $monitor("time = %0t, data_in = %b no of bit's are 1 =%d",$time,d_in,d_out);
    
    d_in = 15;
    #5 d_in = 21;
    #5 d_in = 70;
    #1 $finish;
  end
endmodule


//output
// the counting sequence is given by:
// time = 0, data_in = 00001111 no of bit's are 1 = 4
// time = 5, data_in = 00010101 no of bit's are 1 = 3
// time = 10, data_in = 01000110 no of bit's are 1 = 3