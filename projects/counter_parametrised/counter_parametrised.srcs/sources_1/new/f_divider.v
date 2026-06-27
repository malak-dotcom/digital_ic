`timescale 1ns / 1ps

module f_divider(input clk,rst,input [2:0] enable_fd,output [2:0]q
    );
wire one_hertz;
counter #(.m(9))bcd0(clk,rst,enable_fd[0],q[0]);
counter #(.m(9))bcd1(clk,rst,enable_fd[1],q[1]);
counter #(.m(9))bcd2(clk,rst,enable_fd[2],q[2]);

assign enable_fd={(q[0]==1'd9)&(q[1]==1'd9),q[0]==9,1'd1};
assign one_hertz=(q[2]==9)&(q[1]==9)&(q[0]==9);

endmodule
