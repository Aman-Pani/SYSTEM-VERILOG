class packet;
  bit [31:0] addr;
  static bit [31:0] id;

  function display(bit [31:0] a,b);
    $display("Values are %0d & %0d",a,b);
  endfunction
endclass

module sro_class;
  int id=10;
  initial begin
    packet p;
    p = new();
    
    packet::id = 20;
    p.display(packet::id,id);
    
    packet::id += 30;
    p.display(packet::id,id);
  end
endmodule


// output
// Values are 20 & 10
// Values are 50 & 10