class adder_gen;
  adder_tx tx;
  virtual adder_intf vif;
  
  task run();
    $display("I am inside adder_gen");
    $display("++++++received tx");
    vif = common::vif;
    repeat(8) begin
      @(posedge vif.clk);
      tx = new();
      $display("*****successful randomised stimulus*******",$time);
      tx.randomize();
//       tx.print();
      common::gen2bfm.put(tx); 
    end
//     $display("received tx++++++");
  endtask
endclass