class adder_scb;
  mailbox mon_in2scb = new();
  mailbox mon_out2scb = new();
  
  adder_tx t1,t2,q1,q2;
  adder_tx qin[$],qout[$];
  virtual adder_intf vif;
  
  task run();
    $display("I am inside adder_scb");
    vif = common::vif;
    this.mon_in2scb = common::mon_in2scb;
    this.mon_out2scb = common::mon_out2scb;
    t1=new();
    t2=new();
    q1=new();
    q2=new();
    wait (vif.rst==0);
    repeat(8) begin
      @(posedge vif.clk)
      common::mon_in2scb.get(t1);
      common::mon_out2scb.get(t2);
//       compare(t1,t2);
      qin.push_back(t1);
      qout.push_back(t2);
//     end
      
//     repeat(8) begin
      q1=qin.pop_front();
      q2=qout.pop_front();
      compare(q1,q2);
    end
   
  endtask
  
  function void compare(adder_tx q1,q2);
    
//     checking assert statement
//     $display("Comparing [Before changing 'q1.sum']  q1=%0d  q2=%0d" ,q1.sum,q2.sum);
//     q1.sum = 1;
//     $display("Comparing [After  changing 'q1.sum']  q1=%0d  q2=%0d" ,q1.sum,q2.sum);
//     assert(q1.sum==q2.sum);
    
    if ((q1.sum==q2.sum)&&(q1.carry==q2.carry)) begin
      $display("---------------------------------------------------------------");
      $display("*****Verification successful**************",$time);
      $display("---------------------------------------------------------------");
      
    end
    else begin
      $display("---------------------------------------------------------------");
      $display("#####Verification failed##################",$time);
      $display("---------------------------------------------------------------");
      
    end
//     q1.sum = 1;
//     $display("comparing = q1=%0d  q2=%0d" ,q1.sum,q2.sum);
//     assert(q1.sum==q2.sum);
  endfunction
endclass