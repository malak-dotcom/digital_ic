`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module register_counter(input data ,clk,rst ,shift_ena,count_ena ,output reg [3:0] q
    );

always @(posedge clk)begin
if(shift_ena)
  q<={q[2:0] , data};
else if(count_ena)
   q<=q-1;
   
end
endmodule
