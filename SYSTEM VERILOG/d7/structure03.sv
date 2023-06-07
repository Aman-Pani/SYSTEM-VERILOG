module tb;
  
  struct packed signed{
    
    time a;
    integer b;
    logic [31:0]c;
  }pack2;			//signed,4-state
//   pack2 p_1;
  
  typedef struct{
    
    time a;
    integer b;
    logic [31:0]c;
  }unpack1;			//4-state
  
  unpack1 up_1;
  
  initial begin 
    pack2.a = 100;
    $display("pack2.a = %0t",pack2.a);
    up_1.b = 200;
    $display("up_1.b = %0d",up_1.b);
    up_1.c = 300;
    $display("up_1.c = %0d",up_1.c);
  end
  
endmodule

//output
// # pack2.a = 100
// # up_1.b = 200
// # up_1.c = 300


