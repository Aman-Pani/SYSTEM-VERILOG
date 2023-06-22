module dynamic_arr;
  bit [7:0] d_arr1[];
  int d_arr2[];
  
  initial begin
    $display("Before memory allocation");
    $display("size of d_arr1 %0d",d_arr1.size());
    $display("size of d_arr2 %0d",d_arr2.size());
    
    //memory allocation
    d_arr1 = new[4];
    d_arr2 = new[6];
    
    $display("After memory allocation");
    $display("size of d_arr1 %0d",d_arr1.size());
    $display("size of d_arr2 %0d",d_arr2.size());
    
    //arr initialization
    d_arr1 = {0,129,2,256};              // each element must be in between [0,255] 
    foreach(d_arr2[j]) d_arr2[j] = j;
    
    $display("...d_arr1 Values are...");
    foreach(d_arr1[i])$display("\t d_arr1[%0d] = %0d",i,d_arr1[i]);
    $display(".....................");
    
    $display("...d_arr2 Values are...");
    foreach(d_arr2[i])$display("\t d_arr2[%0d] = %0d",i,d_arr2[i]);
    $display(".....................");
    
  end
endmodule


//output
// Before memory allocation
// size of d_arr1 0
// size of d_arr2 0

// After memory allocation
// size of d_arr1 4
// size of d_arr2 6

// ...d_arr1 Values are...
// 	 d_arr1[0] = 0
// 	 d_arr1[1] = 129
// 	 d_arr1[2] = 2
// 	 d_arr1[3] = 0
// .....................

// ...d_arr2 Values are...
// 	 d_arr2[0] = 0
// 	 d_arr2[1] = 1
// 	 d_arr2[2] = 2
// 	 d_arr2[3] = 3
// 	 d_arr2[4] = 4
// 	 d_arr2[5] = 5
// .....................
