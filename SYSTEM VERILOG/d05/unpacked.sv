module top;
  int aa[4];
  bit b[3:0];
  
  
  // Unpackled array
  initial begin
    $display("Array 1 start");
    foreach(aa[i]) begin
      $display("default value of aa[i]=%0d",aa[i]);
      
      aa[i]=i+1;
      $display("default value of aa[i]=%0d",aa[i]);
    end
  end
  
  initial begin
    $display("Array 2 start");
    foreach(b[j]) begin
      $display("default value of b[j]=%d",b[j]);
      
      b[j]=j+1;
      $display("default value of b[j]=%d",b[j]);
    end
  end
endmodule

// output
// # Array 1 start
// # default value of aa[i]=0
// # default value of aa[i]=1
// # default value of aa[i]=0
// # default value of aa[i]=2
// # default value of aa[i]=0
// # default value of aa[i]=3
// # default value of aa[i]=0
// # default value of aa[i]=4
// # Array 2 start
// # default value of b[j]=0
// # default value of b[j]=0
// # default value of b[j]=0
// # default value of b[j]=1
// # default value of b[j]=0
// # default value of b[j]=0
// # default value of b[j]=0
// # default value of b[j]=1