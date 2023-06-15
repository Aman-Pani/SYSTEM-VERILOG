//write one class having sub object of another class .perform object assignment and shallow copy the results
class my_sub_class;
  rand bit[7:0] sub_property;

  function new(input bit[7:0] prop);
    sub_property = prop;
  endfunction
endclass

class my_class;
  rand my_sub_class sub_obj;

  function new(input bit[7:0] sub_prop);
    sub_obj = new(sub_prop);
  endfunction

  function void display_sub_obj;
    $display("Sub-object property value: %0d", sub_obj.sub_property);
  endfunction

  function void assign_sub_obj(input my_sub_class new_sub_obj);
    sub_obj = new_sub_obj;
  endfunction

  function void copy_sub_obj(input my_class obj);
    sub_obj = obj.sub_obj;
  endfunction
endclass

module my_module;
  my_class obj1;
  my_class obj2;
  my_sub_class sub_obj1;
  my_sub_class sub_obj2;

  initial begin
    sub_obj1 = new(123);
    obj1 = new(sub_obj1.sub_property); // object assignment

    sub_obj2 = new(456);
    obj2 = new(sub_obj2.sub_property); // object assignment

    obj1.display_sub_obj(); // display sub-object property value
    obj2.display_sub_obj(); // display sub-object property value

    obj1.assign_sub_obj(sub_obj2); // assign new sub-object
    obj1.display_sub_obj(); // display sub-object property value

    obj2.copy_sub_obj(obj1); // copy sub-object from obj1 to obj2
    obj2.display_sub_obj(); // display sub-object property value
  end
endmodule


// output
// Sub-object property value: 123
// Sub-object property value: 200
// Sub-object property value: 200
// Sub-object property value: 200