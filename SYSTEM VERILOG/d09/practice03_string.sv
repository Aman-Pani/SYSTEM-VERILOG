module str;
  string A;
  string B;
  
  initial begin 
    A = "Silicon";
    B = "Institute";
    
    $display("A.tolower = %0s", A.tolower);
    $display("B.toupper = %0s", B.toupper);
    $display("B.compare(A) = %0d ",B.compare(A));
    $display("B.substr(6,8) = %0s ",B.substr(6,8));     

  end
endmodule


// output
// A.tolower = silicon
// B.toupper = INSTITUTE
// B.compare(A) = -10 
// B.substr(6,8) = ute 