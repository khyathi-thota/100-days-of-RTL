`timescale 1ns/1ps;

module majority_ckt_tb;
parameter N=2;
  
  //input and ouputs

  reg [2*N:0]Ip;
  int Op;  

  //instantiation of UUT  
  majority_ckt uut(
    .Ip(Ip),
    .Op(Op)
  );

  //intial values

  initial begin
    for(int i=0;i<32;i++)
      begin
      #10  Ip=i;
    $display("T=%0t,Ip = %b",$time,Ip);
      end
  end
endmodule
    
