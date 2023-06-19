class packet;
  rand  bit [7:0] addr;
  randc bit [7:0] data;   
  
  //pre randomization function
  function void pre_randomize();
    addr = 50;data = 100;
    $display("Inside pre_randomize \n addr = %0d, data = %0d",addr,data);
    
  endfunction
  
  //post randomization function
  function void post_randomize();
    $display("Inside post_randomize\n addr = %0d, data = %0d",addr,data);
  endfunction
endclass

module rand_methods;
  initial begin
    packet pkt;
    pkt = new();
    pkt.randomize();
  end
endmodule


// output
// Inside pre_randomize 
//  addr = 50, data = 100
// Inside post_randomize
//  addr = 249, data = 80