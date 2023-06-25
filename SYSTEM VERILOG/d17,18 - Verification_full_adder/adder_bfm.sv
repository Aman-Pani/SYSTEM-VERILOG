class adder_bfm;
  adder_tx tx;
  virtual adder_intf vif;
  
  task drive_tx(adder_tx tx);
    vif.a=tx.a;
    vif.b=tx.b;
    vif.c=tx.c;
  endtask
  
  task run();
    $display("I am inside adder_bfm");
    $display("++++++received tx");
    vif = common::vif;
    wait (vif.rst == 0);
//     forever begin
    repeat(8) begin
      @(posedge vif.clk);
        common::gen2bfm.get(tx);
//         tx.print();
        drive_tx(tx);
    end
//     $display("received tx++++++");
  endtask
endclass