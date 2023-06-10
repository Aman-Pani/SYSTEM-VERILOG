//declar a dynamic array of odd numbers in a module and write data in range 1 to 100 with array size as 20 

module tb;
  int d_arr1[];
  integer i,j,temp;
  parameter lower_range = 1;
  parameter upper_range = 100;
  
  initial begin
    d_arr1 = new[20];
    for(i = 0; i<20;)begin
      temp = $urandom_range(lower_range,upper_range);
      if (temp %2!=0)begin
        d_arr1[i] = temp;
        $display(" %0d \t",d_arr1[i]);
        i++;
      end
    end
  end
endmodule