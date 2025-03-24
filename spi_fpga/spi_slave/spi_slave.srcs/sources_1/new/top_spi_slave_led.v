module top_spi_slave_led (
    input  wire        i_Clk,         // 100 MHz clock
    input  wire        i_Rst_L,       // Active-low reset (BTN0)
    input  wire        i_SPI_Clk,
    input  wire        i_SPI_MOSI,
    input  wire        i_SPI_CS_n,
    output wire        o_SPI_MISO,
    output wire [7:0]  o_RX_Byte      // Drive LEDs directly
);

  wire        w_RX_DV;
  wire [7:0]  w_RX_Byte = 8'h00;
  reg  [7:0]  r_RX_Byte = 8'h00;

  // SPI slave instantiation
  SPI_Slave  u_spi_slave (
    .i_Rst_L(i_Rst_L),
    .i_Clk(i_Clk),
    .o_RX_DV(w_RX_DV),
    .o_RX_Byte(w_RX_Byte),        // ✅ CONNECTED NOW
    //.i_TX_DV(1'b0),               // No TX data
    //.i_TX_Byte(8'h01),            // Just send zeros
    .i_SPI_Clk(i_SPI_Clk),
    .o_SPI_MISO(o_SPI_MISO),
    .i_SPI_MOSI(i_SPI_MOSI),
    .i_SPI_CS_n(i_SPI_CS_n)
  );

  // Store received byte when valid
  always @(posedge i_Clk) begin
    if (!i_Rst_L)
      r_RX_Byte <= 8'h00;
    else if (w_RX_DV)
      r_RX_Byte <= w_RX_Byte;
  end

  assign o_RX_Byte = r_RX_Byte;

endmodule


