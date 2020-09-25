`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:47:56 09/03/2020 
// Design Name: 
// Module Name:    fa 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fa( sum,carry, a,b,c);

input a,b,c;
output sum,carry;

//half adder output
// 0 0 0 0
// 0 1 1 0
// 1 0 1 0
// 1 1 0 1

/*full adder
sum = a xor b xor c
carry = ab + bc + ca
	   = (a xor b) c + ab
*/

wire sum1,
		carry1,carry2,t1;

xor(sum1, a,b); //a xor b
and (carry1, a,b); //ab

//sum
xor (sum, sum1,c); //a xor b xor c

 
 //carry
  and (t1,sum1,c);
or(carry,t1,carry1); // (a xor b) c + ab






endmodule
