`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/14 22:20:53
// Design Name: 
// Module Name: pcreg
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

module pcreg(
    input clk,
    input rst,
    input ena,
    input [31:0] data_in,
    output [31:0] data_out
    );
    
    reg [31:0] data=32'b0;

    always @(posedge clk or posedge rst) begin
        if(rst) data<=32'h00400000;        //reset key
        else begin
            if(ena) data<=data_in;        //enable ,input 
        end
    end
    
    assign data_out    =   data;
    
endmodule
