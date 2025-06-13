module linebuffer_3x3_collect
#(
	// YOLOv3-Tiny 스펙(W=8,16,32,64,128,256)에 맞게 수정된 파라미터
	parameter LEN1=6,
	parameter LEN2=8,
	parameter LEN3=16,
	parameter LEN4=32,
	parameter LEN5=64,
	parameter LEN6=128
)
(
	input clk,
	input [2:0] sel,
	input [7:0] ifmstream_0,
	input [7:0] ifmstream_1,
	input [7:0] ifmstream_2,
	input [7:0] ifmstream_3,
	input [7:0] ifmstream_4,
	input [7:0] ifmstream_5,
	input [7:0] ifmstream_6,
	input [7:0] ifmstream_7,
	
	output [71:0] ifm_win3x3_0,
	output [71:0] ifm_win3x3_1,
	output [71:0] ifm_win3x3_2,
	output [71:0] ifm_win3x3_3,
	output [71:0] ifm_win3x3_4,
	output [71:0] ifm_win3x3_5,
	output [71:0] ifm_win3x3_6,
	output [71:0] ifm_win3x3_7
);

	linebuffer_3x3_type_x6
	#(
		.LEN1(LEN1),
		.LEN2(LEN2),
		.LEN3(LEN3),
		.LEN4(LEN4),
		.LEN5(LEN5),
		.LEN6(LEN6)
	)
	u_linebuffer_3x3_type_x6_0 (/* ... */);
	// ... 7 more instantiations
endmodule
