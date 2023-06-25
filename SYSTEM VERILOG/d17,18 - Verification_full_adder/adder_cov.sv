class adder_cov;
  event adder_ev;
  adder_tx tx;
  virtual adder_intf vif;

  covergroup adder_cg ;//@(adder_ev);
    a_cp: coverpoint tx.a;
    b_cp: coverpoint tx.b;
    c_cp: coverpoint tx.c;
  endgroup
  
  function new();
    adder_cg = new();
  endfunction
  
  task run();
    $display("I am inside adder_cov");
    tx = new();
    vif = common::vif;      
    @(posedge vif.clk);
    common::mon_in2cov.get(tx);
    
    adder_cg.sample();
    ->adder_ev;
    #100;
    $display("displaying coverage from coverage group adder_ev:",adder_cg.get_coverage());
    $display("displaying coverage from coverage group adder_ev:",adder_cg.a_cp.get_coverage());
    $display("displaying coverage from coverage group adder_ev:",adder_cg.b_cp.get_coverage());
    $display("displaying coverage from coverage group adder_ev:",adder_cg.c_cp.get_coverage());
  endtask
endclass