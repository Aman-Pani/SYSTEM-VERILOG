class adder_env;
  adder_agent agent;
  task run();
    agent = new();
    $display("I am inside adder_env");
    $display("+++++++++++++++++++++++");
    agent.run();
  endtask
endclass