// static variable trying to access a non-static variable
class packet;
  byte packet_id;
  
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
    $display("\t Packet Id is %0d",packet_id);		//****error : Illegal to access non-static property 'packet_id' from a static method.
    $display("\t %0d packets created.",no_of_pkts_created);
    $display("--------------------------------------");
  endfunction 
endclass

module static_properties;
  packet pkt[3];

  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
    end
    pkt[0].display_packets_created();
  end  
endmodule