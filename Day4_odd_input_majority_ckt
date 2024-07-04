module majority_ckt(Ip,Op);
  parameter N=2;
  input reg [2*N:0]Ip;
  output int Op;
  always@(*)
    begin
      Op=0;
      for(int count=0;count<(2*N+1);count++)
        begin
          Op=Op+Ip[count];
        end
      if (Op >= (N+1)) begin
        $display("1 is the Majority bit");
        end
      else if (Op < (N+1)) begin
          $display("0 is the Majority bit");
          end
       end
  endmodule
                
          
      
