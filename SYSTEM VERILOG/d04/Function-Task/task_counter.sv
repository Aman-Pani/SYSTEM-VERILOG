//design
module task_count(input [7:0] data_in, output reg [3:0] data_out);
  
  always @(data_in,data_out)
    count_is_in_byte(data_in,data_out);
  
  //task declaration
  task count_is_in_byte(input [7:0] data_in, output reg [3:0] data_out);
    integer i;
    begin 
      data_out = 0;
      
      for(i=0;i<=7;i++)
        if(data_in[i] == 1)
          data_out = data_out+1;
    end
  endtask
endmodule


//testbench
module count_tb;  
  reg [7:0] d_in;
  wire [3:0] d_out;
  
  task_count(d_in,d_out);

  initial begin 
    $display("the counting sequence is given by:");
    $monitor("time = %0t, data_in = %b no of bit's are 1 = %d",$time,d_in,d_out);
    
    d_in = 31;
    #5 d_in = 32;
    #5 d_in = 70;
    #1 $finish;
  end
endmodule


//output
// the counting sequence is given by:
// time = 0, data_in = 00011111 no of bit's are 1 = 5
// time = 5, data_in = 00100000 no of bit's are 1 = 1
// time = 10, data_in = 01000110 no of bit's are 1 = 3
