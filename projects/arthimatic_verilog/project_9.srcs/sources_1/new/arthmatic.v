`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 08:30:14 PM
// Design Name: 
// Module Name: arthmatic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module arthmatic #(parameter n=4)(
input [n-1:0] x,y,
output[n-1:0] s,
output cout,overflow
    );
 
assign{s,cout}=x+y; 
assign overflow = (x[n-1]&y[n-1]&~s | ~x[n-1]& ~y[n-1]&s  );

endmodule
