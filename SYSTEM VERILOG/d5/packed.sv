module top;
 // int [4]aa;
  bit [3:0]b;
  
  // packed array 
  initial begin
    $display("Array 2 start");
    foreach(b[j]) begin
      $display("default value of b[j]=%d",b[j]);
      
      b[j]=j+1;
      $display("value of b[j]=%d",b[j]);
    end
    $display("value of b=%p",b);
  end
endmodule


// output
// # Array 2 start
// # default value of b[j]=0
// # value of b[j]=0
// # default value of b[j]=0
// # value of b[j]=1
// # default value of b[j]=0
// # value of b[j]=0
// # default value of b[j]=0
// # value of b[j]=1
// # value of b=5