module disable_fork;  
  initial begin
    $display("-----------------");

    fork
      //Process-1
      begin
        $display($time,"\tProcess-1 of fork-1 Started");
        #3;
        $display($time,"\tProcess-1 of fork-1 Finished");
      end
      //Process-2
      begin
        sub_process();
      end
    join_any  
    
    disable fork;
      
    $display("---------------------");
      $display($time,"\tAfter disable-fork");
    $display("--------------------");
  
  end
  
  //Sub-Process
  task sub_process;
    $display($time,"\tSub-Process Started");
    #10;
    $display($time,"\tSub-Process Finished");
  endtask      
endmodule

      
// output
// --------------------
//                    0	Process-1 of fork-1 Started
//                    0	Sub-Process Started
//                    3	Process-1 of fork-1 Finished
// --------------------
//                    3	After disable-fork
// --------------------