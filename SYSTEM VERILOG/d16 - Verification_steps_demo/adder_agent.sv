class adder_agent;
// 1. declare and create the object of gen, bfm, mon
  adder_gen gen = new();
  adder_bfm bfm = new();
//   adder_mon mon = new();
  
  task run();
    $display("I am inside adder_agent");
    $display("+++++++++++++++++++++++");
// 2. call the run() of all above components in fork join
    fork
      gen.run();
      $display("+++++++++++++++++++++++");
      bfm.run();
      #15 $display("+++++++++++++++++++++++");
//       mon.run();
//       $display("+++++++++++++++++++++++");
    join
  endtask
  
endclass