`timescale 1ns/1ps;

module odd_parity_tb;
parameter N=4;
  
  //input and ouputs

  reg [N-1:0]Ip;
  wire parity_bit;
  
  
  //instantiation of UUT
  
  odd_parity uut(
    .Ip(Ip),
    .parity_bit(parity_bit)
  );
  
  
  //intial values
  
  initial begin
    for(int i=0;i<(1<<N);i++)
      begin
    
      Ip=i;
            #10;
        $display("T=%0t,Ip = %b,Parity bit is %b",$time,Ip,parity_bit);
      end
    
    $finish;
    
  end
  
endmodule
    
    
