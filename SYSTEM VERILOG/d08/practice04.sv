// write a logic to find max value out of 10 values stored in arrray within the range of 100 to 1000
module max_value_testbench;
  int a[10];
  int max_value;
  initial begin
    for (int i = 0; i < 10; i ++) begin
      a[i] = $urandom_range(100,1000);
      $display("a[%0d]=%p",i, a[i]);
    end

  // Find the maximum value in the array
    for (int i = 1; i < 10; i ++) begin
      if (a[i] > max_value) begin
          max_value = a[i];
      end
    end
    $display("Maximum value in the array: %0d", max_value);
  end
endmodule


//output
// a[0]=        982
// a[1]=        970
// a[2]=        144
// a[3]=        799
// a[4]=        846
// a[5]=        272
// a[6]=        809
// a[7]=        295
// a[8]=        571
// a[9]=        244
// Maximum value in the array: 970