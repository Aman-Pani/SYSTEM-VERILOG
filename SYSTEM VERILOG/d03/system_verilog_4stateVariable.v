module tb;
  logic [3:0]my_data;
  logic en;
  initial begin
    $display("time = %0d,my_data=0x%0h en=%0b",$time,my_data,en);
    my_data="1011";
    $display("time = %0d,my_data=0x%0h en=%0b",$time,my_data,en);
    #1
    $display("time = %0d,my_data=0x%0h en=%0b",$time,my_data,en);
  end
  assign en=my_data[0];
endmodule


// output

//  # time = 0,my_data=0xx en=x
//  # time = 0,my_data=0x1 en=x
//  # time = 1,my_data=0x1 en=1
