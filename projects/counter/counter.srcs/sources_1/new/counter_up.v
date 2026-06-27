`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module counter_up(input clk,rst ,output reg [3:0] q
    );
always @(posedge clk )begin
if(rst)
q=4'b0;
else
q<=q+1;
end
endmodule
