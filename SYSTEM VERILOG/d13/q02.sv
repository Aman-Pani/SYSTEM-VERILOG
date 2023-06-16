//write a class to have only single objectof it ( singleton class ).
class singleton;
  static singleton i;
  protected function new();
      $display("***First object created");
  endfunction
  
  static function singleton create();
    if (i == null) begin
      i = new();
    end
    else
      $display("***Error : First object already created");
//     return i;
  endfunction
endclass

module testbench;
  singleton s1,s2,s3;

  initial begin 
    $display("for 1st obj");
    s1 = s1.create();
    $display("for 2nd obj");
    s2 = singleton::create();  // ::  <- scpoe resolution (also used)
    $display("for 3rd obj");
    s3 = s3.create();
  end
endmodule


// output

// for 1st obj
// ***First object created
// for 2nd obj
// ***Error : First object already created
// for 3rd obj
// ***Error : First object already created