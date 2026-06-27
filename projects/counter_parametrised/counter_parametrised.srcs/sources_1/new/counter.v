`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module counter #( parameter m=4)(input clk,rst,enable ,output reg [3:0]q
    );
always @(posedge clk)begin
if(rst)
q=1'b0;
else if(enable & q<m)
q<=q+1;
else
q<=q;
end
endmodule
