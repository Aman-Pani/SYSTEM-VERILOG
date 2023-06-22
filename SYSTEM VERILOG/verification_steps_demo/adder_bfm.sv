class adder_bfm;
  adder_tx tx;
  virtual adder_intf vif;
  task run();
    $display("I am inside adder_bfm");
    $display("++++++received tx");
    vif = common::vif;
    wait (vif.rst == 0);
//     forever begin
      @(posedge vif.clk);
      repeat(3) begin
        common::gen2bfm.get(tx);
        tx.print();
      end
//     end
    $display("received tx++++++");
  endtask
endclass