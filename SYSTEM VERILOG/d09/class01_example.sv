class sv_class;
  //class proporties. Variables
  int x;
  
  //task
  task d_in(int i);
    x = i;
  endtask
  
  //function
  function int get();
    return x;
  endfunction
  
endclass
  
module sv_class_ex;
  sv_class class_1;  //Creating Handle
  
  initial begin
    sv_class class_2 = new();  //Creating handle and Object
    class_1 = new();    	//Creating Object for the Handle
    
    class_1.x = 5;
    class_2.x = 6;
    $display("class_1: direct setting: x = %0d",class_1.x);
    $display("class_2: direct setting: x = %0d",class_2.x);
    
    //Accessing Class methods
    class_1.d_in(10);
    class_2.d_in(20);
    
    $display("class_1: function calling: x = %0d",class_1.get());
    $display("class_2: function calling: x = %0d",class_2.get());
  end
endmodule


//output
// class_1: direct setting: x = 5
// class_2: direct setting: x = 6
// class_1: function calling: x = 10
// class_2: function calling: x = 20


  