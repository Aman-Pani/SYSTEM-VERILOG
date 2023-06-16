module fork_join_none;
  
  initial begin
    $display("-------------------------");
    
    fork
      //Process-1
      begin
        $display($time,"\tProcess-1 Started");
        #5;
        $display($time,"\tProcess-1 Finished");
      end
      //Process-2
      begin
        $display($time,"\tProcess-2 Started");
        #20;
        $display($time,"\tProcess-2 Finished");
      end
    join_none
    
    $display($time,"\tOutside Fork-Join-None");
    $display("---------------------------");
//     $finish;
  end  
endmodule


// output
// -------------------------
//                    0	Outside Fork-Join-None
// ---------------------------
//                    0	Process-1 Started
//                    0	Process-2 Started
//                    5	Process-1 Finished
//                   20	Process-2 Finished

