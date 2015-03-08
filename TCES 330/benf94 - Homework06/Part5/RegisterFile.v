/* Homework 6 RegisterFile module written by Ben Foster.
 * TCES 330, 5/27/14
 * depends: RegisterDualOE, DecoderN.
 * This module implements a register file with 16 16-bit
 * registers and uses the decoder to find addresses to write
 * to and read from.
 */

module RegisterFile(W_data, W_addr, W_en, Ra_addr, Rb_addr, Ra_en, Rb_en, Clk, Rst, Ra_data, Rb_data);
  input Clk;           // system clock
  input Rst;         // reset signal
  input [15:0] W_data; // data to write
  input [3:0] W_addr; // write address
  input W_en;          // write enable
  input [3:0] Ra_addr, Rb_addr;  // read addresses
  input Ra_en, Rb_en;          // read enables
  output [15:0] Ra_data, Rb_data;// output data
  
  wire [15:0] W_d, Ra_d, Rb_d; //wires connected decoder outputs to registers.
  
  //references DecoderN(W, E, Y);
  // write decoder
  DecoderN #(.N(4)) WriteDecoder(W_addr, W_en, W_d);
  
  // read decoder
  DecoderN #(.N(4)) ReadDecoder(Ra_addr, Ra_en, Ra_d);
  
  //read decoder 2
  DecoderN #(.N(4)) ReadDecoder2(Rb_addr, Rb_en, Rb_d);
  
  // registers with output enable
  // reference: module RegisterDualOEN(I, Ld, Oea, Oeb, Clk, Rst, Qa, Qb);
  RegisterDualOE #(.N(16)) Reg0(W_data, W_d[0], Ra_d[0], Rb_d[0], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg1(W_data, W_d[1], Ra_d[1], Rb_d[1], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg2(W_data, W_d[2], Ra_d[2], Rb_d[2], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg3(W_data, W_d[3], Ra_d[3], Rb_d[3], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg4(W_data, W_d[4], Ra_d[4], Rb_d[4], Clk, Rst, Ra_data, Rb_data);
  
  RegisterDualOE #(.N(16)) Reg5(W_data, W_d[5], Ra_d[5], Rb_d[5], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg6(W_data, W_d[6], Ra_d[6], Rb_d[6], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg7(W_data, W_d[7], Ra_d[7], Rb_d[7], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg8(W_data, W_d[8], Ra_d[8], Rb_d[8], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg9(W_data, W_d[9], Ra_d[9], Rb_d[9], Clk, Rst, Ra_data, Rb_data);
  
  RegisterDualOE #(.N(16)) Reg10(W_data, W_d[10], Ra_d[10], Rb_d[10], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg11(W_data, W_d[11], Ra_d[11], Rb_d[11], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg12(W_data, W_d[12], Ra_d[12], Rb_d[12], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg13(W_data, W_d[13], Ra_d[13], Rb_d[13], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg14(W_data, W_d[14], Ra_d[14], Rb_d[14], Clk, Rst, Ra_data, Rb_data);
  RegisterDualOE #(.N(16)) Reg15(W_data, W_d[15], Ra_d[15], Rb_d[15], Clk, Rst, Ra_data, Rb_data);
  
endmodule
