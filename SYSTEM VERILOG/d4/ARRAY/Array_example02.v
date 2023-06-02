// Code your testbench here
// or browse Examples
module array_test;
  //declaratioin of arrays
  int a3[1:3];
  int a4[1:4];
  int a9[1:9];
  int a10[1:10];
  
  initial begin 
    //array initialization
    a3 = '{1,2,3};
    a4 = '{1,2,3,4};
    a9 = {a4,5,a3,6};
    a10 = '{10{1}};
    
    foreach (a3[i])$display("\t a3[%0d] = %0d",i,a3[i]);
    
    foreach (a4[i])$display("\t a4[%0d] = %0d",i,a4[i]);
    
    foreach (a9[i])$display("\t a9[%0d] = %0d",i,a9[i]);
    
    foreach (a10[i])$display("\t a10[%0d] = %0d",i,a10[i]);
  end
endmodule
    

// output

// 	 a3[1] = 1
// 	 a3[2] = 2
// 	 a3[3] = 3
// 	 a4[1] = 1
// 	 a4[2] = 2
// 	 a4[3] = 3
// 	 a4[4] = 4
// 	 a9[1] = 1
// 	 a9[2] = 2
// 	 a9[3] = 3
// 	 a9[4] = 4
// 	 a9[5] = 5
// 	 a9[6] = 1
// 	 a9[7] = 2
// 	 a9[8] = 3
// 	 a9[9] = 6
// 	 a10[1] = 1
// 	 a10[2] = 1
// 	 a10[3] = 1
// 	 a10[4] = 1
// 	 a10[5] = 1
// 	 a10[6] = 1
// 	 a10[7] = 1
// 	 a10[8] = 1
// 	 a10[9] = 1
// 	 a10[10] = 1