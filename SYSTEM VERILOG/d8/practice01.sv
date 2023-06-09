//declare a array of size 5 with data type integer 
//  i. insert the values 0,1,2,3,4 to the array iteratively.
// ii. show the array after each iteration
//   a[0] = 0 0 0 0 0
//   a[1] = 0 1 0 0 0
//   a[2] = 0 1 2 0 0
//   a[3] = 0 1 2 3 0
//   a[4] = 0 1 2 3 4
//iii. increase the size of array to 10 retaining the old values
// iv. print the array in packed format
//  v. delet the array ,print the size and elements of the array

module top;
  int a[];
  int i;
  initial begin
    a=new[5];
    $display("a=%p",a);
    $display("-------------");
    foreach(a[i]) begin
      a[i]=i;
      $display("a[%0d]=%0p",i,a); 
    end
    
    // size of array
    $display("----Print size--");
    //$display("size of a=%0d",size(a));  //doesnt work
    $display("size of a=%0d",a.size());    
    
    $display("-----Increas Size------");
    $display("array with new size and previous values");
    a=new[10](a);
    $display("a=%p",a);
    $display("size of a=%0d",a.size());                       
        
    $display("-----Delete-------");
    //delete the array
    a.delete();
    $display("a=%p",a);
    $display("size of a=%0d",a.size());
    
  end
endmodule


//output
// # a='{0, 0, 0, 0, 0}
// # -------------
// # a[0]=0 0 0 0 0
// # a[1]=0 1 0 0 0
// # a[2]=0 1 2 0 0
// # a[3]=0 1 2 3 0
// # a[4]=0 1 2 3 4
// # ----Print size--
// # size of a=5
// # -----Increas Size------
// # array with new size and previous values
// # a='{0, 1, 2, 3, 4, 0, 0, 0, 0, 0}
// # size of a=10
// # -----Delete-------
// # a='{}
// # size of a=0