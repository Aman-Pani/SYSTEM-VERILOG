//design
module function_sum(input [7:0]a,b,output reg [7:0]s);
  
  always @(a,b)
    s = sum_2_var(a,b);
  
  function [7:0]sum_2_var(input [7:0]a,b);
    begin 
      sum_2_var = a+b;
    end
  endfunction
endmodule


//testbench
module function_tb;
  reg [7:0] a,b;
  wire [7:0] sum;
  function_sum s1(a,b,sum);
  initial begin
    $monitor("time = %0d, a = %0d, b= %0d, sum = %0d",$time,a,b,sum);
    #20 a = 10; b = 20;
    #50 a = 50; b = 60;
  end
endmodule


//output
// time =  0, a = x,  b= x,  sum = x
// time = 20, a = 10, b= 20, sum = 30
// time = 70, a = 50, b= 60, sum = 110