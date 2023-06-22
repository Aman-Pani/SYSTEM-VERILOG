class adder_tx;
  rand int a ,b;
  constraint data{a inside{[1:999]}; b inside{[1000:9999]};}
  function print();
    $display("Printing Transaction a=%0d  b=%0d",a,b);
  endfunction
endclass