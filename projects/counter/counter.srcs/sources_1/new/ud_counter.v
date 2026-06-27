`timescale 1ns / 1ps

module ud_counter(input clk,rst,enable,ud, output reg [4:0] a

    );
 always @(posedge clk)begin
 if(rst)
 a=5'b0;
 else if (enable)begin
      if(ud)
      a<=a+1;
      else 
      a=a-1;
     
 end
 else
 a<=a;
 end
endmodule
