// write a snippet to track back the number of times class object has been created (azpK)

class my_class;
  static int num_objects;

  function new();
    num_objects++;
  endfunction

//   function int get_num_objects();
//     return num_objects;
//   endfunction
endclass

module tb;
  my_class obj1;
  initial begin
    repeat(7)
      obj1 = new();

    $display("Number of objects created: %0d", obj1.num_objects());
  end
endmodule


// output
// Number of objects created: 7