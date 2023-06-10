//ACCESSING STATIC PROPERTY WITHOUT CREATING OBJECT
class packet;        
  //static property to keep track of number of pkt's created
  static byte no_of_pkts_created;
  
  //constructor
  function new();
    //incrementing pkt count on creating an object
    no_of_pkts_created++;
  endfunction
    
  //Static method to display class prperties
  static function void display_packets_created();
    $display("--------------------------------------");
    $display("\t %0d packets created.",no_of_pkts_created);
    $display("--------------------------------------");
  endfunction 
endclass

module static_properties;
  packet pkt[3];
  packet p;

  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
    end
    
    //Accesing static Variable with class handle p
    $display("--------------------------------------");
    $display("\t %0d packets created.",p.no_of_pkts_created);
    $display("--------------------------------------");    
    
    //Accesing static Method with class handle p
    p.display_packets_created();
  end  
endmodule


// output
// --------------------------------------
// 	 3 packets created.
// --------------------------------------
// --------------------------------------
// 	 3 packets created.
// --------------------------------------