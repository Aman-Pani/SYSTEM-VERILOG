//write a class with one variable having default size 8 . take 4 objects of this class with below conditions : (1) two objects with size remain 8 . (2) thired object with size 10 . (3) fourth object with size 16

class my_class#(parameter int d_size = 8);
  bit [d_size-1:0] my_var;
  
endclass
  
module tb;
  initial begin
    my_class obj1 = new();
    my_class obj2 = new();
    my_class#(10)obj3 = new();
    my_class#(16)obj4 = new();
    
    $display("Size of object_1 = %0d",$size(obj1.my_var));
    $display("Size of object_2 = %0d",$size(obj2.my_var));
    $display("Size of object_3 = %0d",$size(obj3.my_var));
    $display("Size of object_4 = %0d",$size(obj4.my_var));
    
  end
endmodule


// output
// Size of object_1 = 8
// Size of object_2 = 8
// Size of object_3 = 10
// Size of object_4 = 16