class packet;
  rand  bit [3:0] addr;
  constraint addr_range1 { addr > 5; }
  constraint addr_range2 { addr < 5; }
endclass

class packet2 extends packet;
  constraint addr_range { addr < 5; } //overriding constraint of parent class
endclass

module const_inhe;
  initial begin
    packet pkt1;
    packet2 pkt2;

    pkt1 = new();
    pkt2 = new();

    $display("------------------------------------");
    repeat(5) begin
      pkt1.randomize();
      $display("\tpkt1:: addr = %0d",pkt1.addr);
    end

    $display("------------------------------------"); 
    repeat(5) begin
      pkt2.randomize();
      $display("\tpkt2:: addr = %0d",pkt2.addr);
    end
    $display("------------------------------------");
  end
endmodule


// output
// ------------------------------------
// constraint_error_scenario.sv(21): randomize() failed due to conflicts between the following constraints:
// 	constraint_error_scenario.sv(3): addr_range1 { (addr > 5); }
// 	constraint_error_scenario.sv(4): addr_range2 { (addr < 5); }
// Given:
// 	bit [3:0] addr
// ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
// ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
// ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.
// 
//    Time: 0 ns  Iteration: 0  Process: /const_inhe/#INITIAL#12(#ublk#178479797#12) File: constraint_error_scenario.sv Line: 21
// 	pkt1:: addr = 0
// constraint_error_scenario.sv(21): randomize() failed due to conflicts between the following constraints:
// 	constraint_error_scenario.sv(3): addr_range1 { (addr > 5); }
// 	constraint_error_scenario.sv(4): addr_range2 { (addr < 5); }
// Given:
// 	bit [3:0] addr
// ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
// ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
// ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.
// 
//    Time: 0 ns  Iteration: 0  Process: /const_inhe/#INITIAL#12(#ublk#178479797#12) File: constraint_error_scenario.sv Line: 21
// 	pkt1:: addr = 0
// constraint_error_scenario.sv(21): randomize() failed due to conflicts between the following constraints:
// 	constraint_error_scenario.sv(3): addr_range1 { (addr > 5); }
// 	constraint_error_scenario.sv(4): addr_range2 { (addr < 5); }
// Given:
// 	bit [3:0] addr
// ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
// ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
// ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.
// 
//    Time: 0 ns  Iteration: 0  Process: /const_inhe/#INITIAL#12(#ublk#178479797#12) File: constraint_error_scenario.sv Line: 21
// 	pkt1:: addr = 0
// constraint_error_scenario.sv(21): randomize() failed due to conflicts between the following constraints:
// 	constraint_error_scenario.sv(3): addr_range1 { (addr > 5); }
// 	constraint_error_scenario.sv(4): addr_range2 { (addr < 5); }
// Given:
// 	bit [3:0] addr
// ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
// ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
// ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.
// 
//    Time: 0 ns  Iteration: 0  Process: /const_inhe/#INITIAL#12(#ublk#178479797#12) File: constraint_error_scenario.sv Line: 21
// 	pkt1:: addr = 0
// constraint_error_scenario.sv(21): randomize() failed due to conflicts between the following constraints:
// 	constraint_error_scenario.sv(3): addr_range1 { (addr > 5); }
// 	constraint_error_scenario.sv(4): addr_range2 { (addr < 5); }
// Given:
// 	bit [3:0] addr
// ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
// ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
// ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.
// 
//    Time: 0 ns  Iteration: 0  Process: /const_inhe/#INITIAL#12(#ublk#178479797#12) File: constraint_error_scenario.sv Line: 21
// 	pkt1:: addr = 0
// ------------------------------------
// constraint_error_scenario.sv(27): randomize() failed due to conflicts between the following constraints:
// 	constraint_error_scenario.sv(3): addr_range1 { (addr > 5); }
// 	constraint_error_scenario.sv(8): addr_range { (addr < 5); }
// Given:
// 	bit [3:0] addr
// ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
// ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
// ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.
// 
//    Time: 0 ns  Iteration: 0  Process: /const_inhe/#INITIAL#12(#ublk#178479797#12) File: constraint_error_scenario.sv Line: 27
// 	pkt2:: addr = 0
// constraint_error_scenario.sv(27): randomize() failed due to conflicts between the following constraints:
// 	constraint_error_scenario.sv(3): addr_range1 { (addr > 5); }
// 	constraint_error_scenario.sv(8): addr_range { (addr < 5); }
// Given:
// 	bit [3:0] addr
// ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
// ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
// ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.
// 
//    Time: 0 ns  Iteration: 0  Process: /const_inhe/#INITIAL#12(#ublk#178479797#12) File: constraint_error_scenario.sv Line: 27
// 	pkt2:: addr = 0
// constraint_error_scenario.sv(27): randomize() failed due to conflicts between the following constraints:
// 	constraint_error_scenario.sv(3): addr_range1 { (addr > 5); }
// 	constraint_error_scenario.sv(8): addr_range { (addr < 5); }
// Given:
// 	bit [3:0] addr
// ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
// ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
// ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.
// 
//    Time: 0 ns  Iteration: 0  Process: /const_inhe/#INITIAL#12(#ublk#178479797#12) File: constraint_error_scenario.sv Line: 27
// 	pkt2:: addr = 0
// constraint_error_scenario.sv(27): randomize() failed due to conflicts between the following constraints:
// 	constraint_error_scenario.sv(3): addr_range1 { (addr > 5); }
// 	constraint_error_scenario.sv(8): addr_range { (addr < 5); }
// Given:
// 	bit [3:0] addr
// ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
// ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
// ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.
// 
//    Time: 0 ns  Iteration: 0  Process: /const_inhe/#INITIAL#12(#ublk#178479797#12) File: constraint_error_scenario.sv Line: 27
// 	pkt2:: addr = 0
// constraint_error_scenario.sv(27): randomize() failed due to conflicts between the following constraints:
// 	constraint_error_scenario.sv(3): addr_range1 { (addr > 5); }
// 	constraint_error_scenario.sv(8): addr_range { (addr < 5); }
// Given:
// 	bit [3:0] addr
// ** Note: (vsim-7130) Enabling enhanced debug (-solvefaildebug=2) may generate a more descriptive constraint contradiction report and -solvefaildebug testcase.
// ** Note: (vsim-7106) Use vsim option '-solvefailtestcase[=filename]' to generate a simplified testcase that will reproduce the failure.
// ** Warning: (vsim-7084) No solutions exist which satisfy the specified constraints; randomize() failed.
// 
//    Time: 0 ns  Iteration: 0  Process: /const_inhe/#INITIAL#12(#ublk#178479797#12) File: constraint_error_scenario.sv Line: 27
// 	pkt2:: addr = 0
// ------------------------------------