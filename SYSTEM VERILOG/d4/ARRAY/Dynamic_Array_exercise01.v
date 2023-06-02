module dynamic_arr;
  int d_arr1[];
  bit [8:0] d_arr2[];
  
  
  initial begin
    $display("Before memory allocation");
    $display("size of d_arr1 %0d",d_arr1.size());
    $display("size of d_arr2 %0d",d_arr2.size());
    
    //memory allocation
    d_arr1 = new[4];
    d_arr2 = new[3];
    
    $display("\nAfter memory allocation");
    $display("size of d_arr1 %0d",d_arr1.size());
    $display("size of d_arr2 %0d",d_arr2.size());
    
    //arr initialization
    d_arr1 = {501,66};
    d_arr2 = {500,3};
    //foreach(d_arr2[j]) d_arr2[j] = j;
    
    $display("\n...d_arr1 Values are...");
    foreach(d_arr1[i])$display("\t d_arr1[%0d] = %0d",i,d_arr1[i]);
    $display(".....................");
    
    $display("...d_arr2 Values are...");
    foreach(d_arr2[i])$display("\t d_arr2[%0d] = %0d",i,d_arr2[i]);
    $display(".....................");
    
    //increasing the size of d_arr2 to 7 retaining old values
    d_arr2 = new[7](d_arr2); 
    $display("\nnew size of d_arr2 %0d ",d_arr2.size());
    $display("...d_arr2 Values are...");
    foreach(d_arr2[i])$display("\t d_arr2[%0d] = %0d",i,d_arr2[i]);
    $display(".....................");
    
    //copy last two element of arr1 to arr2 last index
    d_arr2[5] = d_arr1[0];
    d_arr2[6] = d_arr1[1];
    
    $display("\nnew size of d_arr2 %0d ",d_arr2.size());
    $display("...d_arr2 Values are...");
    foreach(d_arr2[i])$display("\t d_arr2[%0d] = %0d",i,d_arr2[i]);
    $display(".....................");
    
    //delete arr1 & display size,element
    d_arr1.delete;
    $display("size of d_arr1 %0d",d_arr1.size());
    $display("\n...d_arr1 Values are...");
    foreach(d_arr1[i])$display("\t d_arr1[%0d] = %0d",i,d_arr1[i]);
    
  end
endmodule


//output
// Before memory allocation
// size of d_arr1 0
// size of d_arr2 0

// After memory allocation
// size of d_arr1 4
// size of d_arr2 3

// ...d_arr1 Values are...
// 	 d_arr1[0] = 501
// 	 d_arr1[1] = 66
// .....................
// ...d_arr2 Values are...
// 	 d_arr2[0] = 500
// 	 d_arr2[1] = 3
// .....................

// new size of d_arr2 7 
// ...d_arr2 Values are...
// 	 d_arr2[0] = 500
// 	 d_arr2[1] = 3
// 	 d_arr2[2] = 0
// 	 d_arr2[3] = 0
// 	 d_arr2[4] = 0
// 	 d_arr2[5] = 0
// 	 d_arr2[6] = 0
// .....................

// new size of d_arr2 7 
// ...d_arr2 Values are...
// 	 d_arr2[0] = 500
// 	 d_arr2[1] = 3
// 	 d_arr2[2] = 0
// 	 d_arr2[3] = 0
// 	 d_arr2[4] = 0
// 	 d_arr2[5] = 501
// 	 d_arr2[6] = 66
// .....................
// size of d_arr1 0

// ...d_arr1 Values are...