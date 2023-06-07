module tb;
  
  struct {
    bit [7:0] opcode;
    bit [31:0] addr;
  
  }IR;
  
  
  typedef struct{
    
    bit [7:0] opcode;
    bit [31:0] addr;
  
  }ir;
  ir IR1;
  ir IR2;
  
  struct packed signed{
    
    int a;
    shortint b;
    byte c;
    bit [7:0] d;
    
  }pack1;
  
  initial begin 
    
    IR1.opcode = $urandom_range(100,200);
    IR1.addr = $urandom_range(100,200);
    $display("IR1.OPCODE = %0p \tIR1.addr = %0p",IR1.opcode,IR1.addr);
    
    IR2.opcode = $urandom_range(200,400);
    IR2.addr = $urandom_range(200,400);
    $display("IR2.OPCODE = %0p \tIR2.addr = %0p",IR2.opcode,IR2.addr);
    
    pack1.b = $urandom_range(400,600);
    $display("pack1.b = %0p",pack1.b);
    
  end
  
endmodule


//output
// IR1.OPCODE = 103 	IR1.addr = 141
// IR2.OPCODE = 210 	IR2.addr = 100
// pack1.b = 431