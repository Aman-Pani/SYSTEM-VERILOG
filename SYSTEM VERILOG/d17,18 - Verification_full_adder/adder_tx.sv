class adder_tx;
  rand bit a ,b ,c;
  bit sum ,carry;
  function void print();
    $display("-------a=%0d b=%0d c=%0d-----------sum=%0d carry=%0d",a,b,c,sum,carry,$time);
  endfunction
endclass