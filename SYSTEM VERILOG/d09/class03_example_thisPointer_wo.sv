//class declaration
class sv_class;
  //class proporties. Veriables in the class
  int x;
  
  //method-1
  task double(int x);
    $display("in double task. before doubling: x=%0d",x);
    x = 2*x;    //THE x WHICH IS IN THE SCOPE OF THE DOUBLE TASK WILL BE DOUBLED. THE x OF CLASS WILL NOT BE DOUBLED AND REMAIN AS 5
    $display("in double task. after doubling: x=%0d",x);
  endtask
  
  //method-2
  function int get();
    $display("in function x=%0d",x);
    return x;
  endfunction
  
endclass
  
module sv_class_ex;
 sv_class class_1;		//Creating Handle
  
  initial begin
    class_1 = new();	//Creating Object for the Handle    
    class_1.x = 5;    
    $display("class_1_x: printing directly. x = %0d",class_1.x);    
    // calling the task of the class
    class_1.double(10);
    // calling the function of the class
    $display("class_1_x. printing using get() .x = %0d",class_1.get());
  end
endmodule


// output
//  class_1_x: printing directly. x = 5
//  in double task. before doubling: x=10
//  in double task. after doubling: x=20
//  in function x=5
//  class_1_x. printing using get() .x = 5