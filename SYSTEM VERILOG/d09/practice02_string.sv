module str;
  string A;
  string B;
  string C;
  int D;
  string Bn;
  
  initial begin 
    A = "TEST";
    C = "TESt";
    B = "BencH";
    $display("A.len() = %0d", A.len());
    $display("A.getc(3) = %0s", A.getc(3));
    $display("A.tolower = %0s", A.tolower);
    $display("B.toupper = %0s", B.toupper);
    $display("C.compare(A) = %0d ",C.compare(A) );
    $display("A.compare(\"test\") = %0d ",A.compare("test") );
    $display("A.substr(1,3) = %0s ",A.substr(1,3) ); 
    A = "111";    
    $display("A.atoi() = %0d ",A.atoi() );
    D = A.atoi();
    $display(" %0d ",D );
    A = "TEST";
    Bn={B, {A.substr(1,3)}};
    $display("after joining =  %s ",Bn);    

  end
endmodule


//output
// A.len() = 4
// A.getc(3) = T
// A.tolower = test
// B.toupper = BENCH
// C.compare(A) = 32 
// A.compare("test") = -32 
// A.substr(1,3) = EST 
// A.atoi() = 111 
//  111 
// after joining =  BencHEST 
