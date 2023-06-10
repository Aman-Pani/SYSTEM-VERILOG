//declar a dynamic array in a module with no repetitionsand the write data in range 110 to 150 with array size as 20 (use parameter lower_range,upper_range, Urandom_range(lower_range,upper_range))

module tb;
  int d_arr1[];
  integer i,j,temp;
//   int flag = 0;
  parameter lower_range = 110;
  parameter upper_range = 150;
  
  initial begin
    d_arr1 = new[20];
    for(i = 0; i<20; i++)begin
      temp = $urandom_range(lower_range,upper_range);
      for(j = 0; j<i; j++)begin
        if (temp == d_arr1[j])begin
          temp = $urandom_range(lower_range,upper_range);
          j = -1;
        end
      end
      d_arr1[i] = temp;
    end
    for(i = 0; i<20; i++)
      $display(" %0d \t",d_arr1[i]);
  end
endmodule