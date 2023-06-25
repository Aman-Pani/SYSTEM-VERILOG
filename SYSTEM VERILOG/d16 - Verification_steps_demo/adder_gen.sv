class adder_gen;
  adder_tx tx;
  task run();
    $display("I am inside adder_gen");
    $display("++++++received tx");
    repeat(3) begin
      tx = new();
      tx.randomize();
      tx.print();
      common::gen2bfm.put(tx);
    end
    $display("received tx++++++");
  endtask
endclass