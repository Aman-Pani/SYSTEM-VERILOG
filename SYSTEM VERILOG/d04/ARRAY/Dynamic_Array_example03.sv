module dynamic_arr;
  bit [7:0] d_arr1[];
  int d_arr2[];
  
  initial begin
    $display("Before memory allocation");
    $display("size of d_arr1 %0d",d_arr1.size());
    $display("size of d_arr2 %0d",d_arr2.size());
    
    //memory allocation
    d_arr1 = new[2];
    d_arr2 = new[3];
    
    $display("\nAfter memory allocation");
    $display("size of d_arr1 %0d",d_arr1.size());
    $display("size of d_arr2 %0d",d_arr2.size());
    
    //arr initialization
    d_arr1 = {2,3};
    foreach(d_arr2[j]) d_arr2[j] = j;
    
    $display("\n...d_arr1 Values are...");
    foreach(d_arr1[i])$display("\t d_arr1[%0d] = %0d",i,d_arr1[i]);
    $display(".....................");
    
    $display("...d_arr2 Values are...");
    foreach(d_arr2[i])$display("\t d_arr2[%0d] = %0d",i,d_arr2[i]);
    $display(".....................");
    
    //increasing the size by overriding the old values
    d_arr1 = new[4]; //creating dynamic array of 4 element
    $display("\nnew size of d_arr1 %0d ",d_arr1.size());
    $display("...d_arr1 Values are...");
    foreach(d_arr1[i])$display("\t d_arr1[%0d] = %0d",i,d_arr1[i]);
    $display(".....................");
    
    //increasing the size by overriding the old values
    d_arr2 = new[5](d_arr2); //creating dynamic array of 5 element retaining old values
    $display("\nnew size of d_arr2 %0d ",d_arr2.size());
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
// size of d_arr1 2
// size of d_arr2 3

// ...d_arr1 Values are...
// 	 d_arr1[0] = 2
// 	 d_arr1[1] = 3
// .....................
// ...d_arr2 Values are...
// 	 d_arr2[0] = 0
// 	 d_arr2[1] = 1
// 	 d_arr2[2] = 2
// .....................

// new size of d_arr1 4 
// ...d_arr1 Values are...
// 	 d_arr1[0] = 0
// 	 d_arr1[1] = 0
// 	 d_arr1[2] = 0
// 	 d_arr1[3] = 0
// .....................

// new size of d_arr2 5 
// ...d_arr2 Values are...
// 	 d_arr2[0] = 0
// 	 d_arr2[1] = 1
// 	 d_arr2[2] = 2
// 	 d_arr2[3] = 0
// 	 d_arr2[4] = 0
// .....................
