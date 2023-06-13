class A;
  int i;
endclass

module test();
  A a1,a2;
  initial begin
    a1=new;
    a2=a1;
    a1.i=2;
    
    $display("address of handle a1=%0d",a1);
    $display("address of handle a2=%0d",a2);

    
    $display("a1.i=%0d a2.i=%0d",a1.i,a2.i);
  end
endmodule


// output
// address of handle a1=4025311296
// address of handle a2=4025311296
// a1.i=2 a2.i=2