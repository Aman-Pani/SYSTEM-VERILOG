class adder_env;
  adder_agent agent;
//   adder_scb scb;
  task run();
    agent = new();
//     scb = new();
    $display("I am inside adder_env");
    $display("+++++++++++++++++++++++");
    fork
      agent.run();
//       scb.run();
    join
  endtask
endclass