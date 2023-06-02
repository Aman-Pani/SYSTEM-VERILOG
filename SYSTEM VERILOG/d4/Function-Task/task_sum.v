//design
module task_sum(input [7:0] a,b, output reg [7:0] s);
  
  always@(a,b)
    sum_2_var(a,b,s);
  
  task sum_2_var(input [7:0] a,b, output reg [7:0] s);
    begin
      s = a+b;
    end
  endtask
endmodule


//testbench
module task_tb;
  reg [7:0] a,b;
  wire [7:0] sum;
  task_sum s1(a,b,sum);
  initial begin
    $monitor("time = %0d, a = %0d, b= %0d, sum = %0d",$time,a,b,sum);
    a = 30; b = 10;
    #20 a = 10; b = 20;
    #50 a = 50; b = 60;
    #1 $finish;
  end
endmodule


//output
// # time =  0, a = 30, b= 10, sum = 40
// # time = 20, a = 10, b= 20, sum = 30
// # time = 70, a = 50, b= 60, sum = 110