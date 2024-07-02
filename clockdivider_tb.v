`timescale 1ns/1ps;
module clockdivider_tb;
  //inputs
  reg clk;
  reg rst;
  //outputs
  wire divideby2;
  wire divideby4;
  wire divideby8;
  wire divideby16;
  
  //instantiating unit under test
  
  clockdivider uut(
    .clk(clk),
    .rst(rst),
    .divideby2(divideby2),
    .divideby4(divideby4),
    .divideby8(divideby8),
    .divideby16(divideby16)
  );
  
  initial begin
    //initialize inputs
    
    clk=0;
    rst=0;
    #20 rst=1;
    
  end
  
  initial begin
    
    $dumpfile("dump.vcd"); 
    $dumpvars(0, clockdivider_tb);  
   
end
  
  always
    #10 clk =~clk;
  
  initial 
    #140 $finish;
  
endmodule
    
    
