`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 05:49:08 PM
// Design Name: 
// Module Name: subtractor2
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


module subtractor2
#(parameter n=4)(
input[n-1:0] a,b,
input add_n,
output [n-1:0] s,
output cout, overflow
    );
 wire [n-1:0] b_xored;
 generate
 genvar k;
 begin:stage
  for(k=0; k<n ;k=k+1)
   assign b_xored[k]=b[k]^add_n ;
   end
 endgenerate
 rca_nbit #(.n(n)) f(
.a(a[n-1]) ,
.b(b[n-1]), 
.cin(add_n),
.s(s[n-1]),
.cout(cout)

 );
 assign overflow=(a[n-1] & b_xored[n-1] &~ s[n-1]) | (~a[n-1] & ~b_xored[n-1] & s[n-1] );
endmodule
