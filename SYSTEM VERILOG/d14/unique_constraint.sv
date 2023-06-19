class unique_elements;
  rand bit [3:0] var_1,var_2,var_3;
  rand bit [7:0] array[6];
  rand int arr[];
  rand int arr2[];
  constraint varis_c {unique {var_1,var_2,var_3};}
  constraint array_c {unique {array};}
  constraint array_1{arr.size == 4; unique {arr};}
  constraint array_2{arr2.size == 10; unique {arr2}; foreach(arr2[i]) arr2[i] inside{[0:10]};}
  
  function void display();
    $display("var_1 = %0p",var_1);
    $display("var_2 = %0p",var_2);
    $display("var_3 = %0p",var_3);
    $display("array = %0p",array);
    $display("arr   = %0p",arr);
    $display("arr2  = %0p",arr2);
  endfunction
endclass

module ique_elements_randomization;
  unique_elements pkt;

  initial begin
    pkt = new();
    pkt.randomize();
    pkt.display();   
  end
endmodule


// output
// var_1 = 2
// var_2 = 1
// var_3 = 10
// array = 17 129 93 14 70 236
// arr   = 937334705 -1643689780 992677411 -91345730
// arr2  = 0 1 3 8 6 7 9 4 2 5