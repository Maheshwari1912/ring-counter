module ring_counter(
  input clk,
  input reset,
  output [3:0] q);
  reg [3:0] data_reg;
  always@(posedge clk or posedge reset) begin
    if(reset) begin
      data_reg<=4'b0001;
    end
    else begin
      data_reg<={data_reg[0],data_reg[3:1]};
    end
  end
  assign q=data_reg;
endmodule
