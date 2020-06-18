`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/19 06:46:27
// Design Name: 
// Module Name: vtf_led_test
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


module vtf_led_test;
//Inputs
reg sys_clk;
reg rst_n;
//Outputs
wire[3:0] led;

//Instantiate the Unit Under Test 
led uut(
    .sys_clk(sys_clk),
    .rst_n(rst_n),
    .led(led)
);

initial
begin
//Initialize Inputs
    sys_clk = 0;
    rst_n = 0;
    #1000;
    rst_n = 1;
end

//Create Clock
always #10 sys_clk = ~ sys_clk;

endmodule
