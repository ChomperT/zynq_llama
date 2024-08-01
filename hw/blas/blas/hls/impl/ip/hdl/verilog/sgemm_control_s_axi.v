// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module sgemm_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [31:0]                   k,
    output wire [63:0]                   A_offset,
    output wire [63:0]                   lda,
    output wire [63:0]                   B_offset,
    output wire [63:0]                   ldb,
    output wire [63:0]                   C_offset,
    output wire [63:0]                   ldc,
    output wire [7:0]                    RM,
    output wire [7:0]                    RN,
    output wire [63:0]                   m0,
    output wire [63:0]                   m,
    output wire [63:0]                   n0,
    output wire [63:0]                   n,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_hs
//
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of k
//        bit 31~0 - k[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of A_offset
//        bit 31~0 - A_offset[31:0] (Read/Write)
// 0x1c : Data signal of A_offset
//        bit 31~0 - A_offset[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of lda
//        bit 31~0 - lda[31:0] (Read/Write)
// 0x28 : Data signal of lda
//        bit 31~0 - lda[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of B_offset
//        bit 31~0 - B_offset[31:0] (Read/Write)
// 0x34 : Data signal of B_offset
//        bit 31~0 - B_offset[63:32] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of ldb
//        bit 31~0 - ldb[31:0] (Read/Write)
// 0x40 : Data signal of ldb
//        bit 31~0 - ldb[63:32] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of C_offset
//        bit 31~0 - C_offset[31:0] (Read/Write)
// 0x4c : Data signal of C_offset
//        bit 31~0 - C_offset[63:32] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of ldc
//        bit 31~0 - ldc[31:0] (Read/Write)
// 0x58 : Data signal of ldc
//        bit 31~0 - ldc[63:32] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of RM
//        bit 7~0 - RM[7:0] (Read/Write)
//        others  - reserved
// 0x64 : reserved
// 0x68 : Data signal of RN
//        bit 7~0 - RN[7:0] (Read/Write)
//        others  - reserved
// 0x6c : reserved
// 0x70 : Data signal of m0
//        bit 31~0 - m0[31:0] (Read/Write)
// 0x74 : Data signal of m0
//        bit 31~0 - m0[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of m
//        bit 31~0 - m[31:0] (Read/Write)
// 0x80 : Data signal of m
//        bit 31~0 - m[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of n0
//        bit 31~0 - n0[31:0] (Read/Write)
// 0x8c : Data signal of n0
//        bit 31~0 - n0[63:32] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of n
//        bit 31~0 - n[31:0] (Read/Write)
// 0x98 : Data signal of n
//        bit 31~0 - n[63:32] (Read/Write)
// 0x9c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL         = 8'h00,
    ADDR_GIE             = 8'h04,
    ADDR_IER             = 8'h08,
    ADDR_ISR             = 8'h0c,
    ADDR_K_DATA_0        = 8'h10,
    ADDR_K_CTRL          = 8'h14,
    ADDR_A_OFFSET_DATA_0 = 8'h18,
    ADDR_A_OFFSET_DATA_1 = 8'h1c,
    ADDR_A_OFFSET_CTRL   = 8'h20,
    ADDR_LDA_DATA_0      = 8'h24,
    ADDR_LDA_DATA_1      = 8'h28,
    ADDR_LDA_CTRL        = 8'h2c,
    ADDR_B_OFFSET_DATA_0 = 8'h30,
    ADDR_B_OFFSET_DATA_1 = 8'h34,
    ADDR_B_OFFSET_CTRL   = 8'h38,
    ADDR_LDB_DATA_0      = 8'h3c,
    ADDR_LDB_DATA_1      = 8'h40,
    ADDR_LDB_CTRL        = 8'h44,
    ADDR_C_OFFSET_DATA_0 = 8'h48,
    ADDR_C_OFFSET_DATA_1 = 8'h4c,
    ADDR_C_OFFSET_CTRL   = 8'h50,
    ADDR_LDC_DATA_0      = 8'h54,
    ADDR_LDC_DATA_1      = 8'h58,
    ADDR_LDC_CTRL        = 8'h5c,
    ADDR_RM_DATA_0       = 8'h60,
    ADDR_RM_CTRL         = 8'h64,
    ADDR_RN_DATA_0       = 8'h68,
    ADDR_RN_CTRL         = 8'h6c,
    ADDR_M0_DATA_0       = 8'h70,
    ADDR_M0_DATA_1       = 8'h74,
    ADDR_M0_CTRL         = 8'h78,
    ADDR_M_DATA_0        = 8'h7c,
    ADDR_M_DATA_1        = 8'h80,
    ADDR_M_CTRL          = 8'h84,
    ADDR_N0_DATA_0       = 8'h88,
    ADDR_N0_DATA_1       = 8'h8c,
    ADDR_N0_CTRL         = 8'h90,
    ADDR_N_DATA_0        = 8'h94,
    ADDR_N_DATA_1        = 8'h98,
    ADDR_N_CTRL          = 8'h9c,
    WRIDLE               = 2'd0,
    WRDATA               = 2'd1,
    WRRESP               = 2'd2,
    WRRESET              = 2'd3,
    RDIDLE               = 2'd0,
    RDDATA               = 2'd1,
    RDRESET              = 2'd2,
    ADDR_BITS                = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [31:0]                   int_k = 'b0;
    reg  [63:0]                   int_A_offset = 'b0;
    reg  [63:0]                   int_lda = 'b0;
    reg  [63:0]                   int_B_offset = 'b0;
    reg  [63:0]                   int_ldb = 'b0;
    reg  [63:0]                   int_C_offset = 'b0;
    reg  [63:0]                   int_ldc = 'b0;
    reg  [7:0]                    int_RM = 'b0;
    reg  [7:0]                    int_RN = 'b0;
    reg  [63:0]                   int_m0 = 'b0;
    reg  [63:0]                   int_m = 'b0;
    reg  [63:0]                   int_n0 = 'b0;
    reg  [63:0]                   int_n = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_K_DATA_0: begin
                    rdata <= int_k[31:0];
                end
                ADDR_A_OFFSET_DATA_0: begin
                    rdata <= int_A_offset[31:0];
                end
                ADDR_A_OFFSET_DATA_1: begin
                    rdata <= int_A_offset[63:32];
                end
                ADDR_LDA_DATA_0: begin
                    rdata <= int_lda[31:0];
                end
                ADDR_LDA_DATA_1: begin
                    rdata <= int_lda[63:32];
                end
                ADDR_B_OFFSET_DATA_0: begin
                    rdata <= int_B_offset[31:0];
                end
                ADDR_B_OFFSET_DATA_1: begin
                    rdata <= int_B_offset[63:32];
                end
                ADDR_LDB_DATA_0: begin
                    rdata <= int_ldb[31:0];
                end
                ADDR_LDB_DATA_1: begin
                    rdata <= int_ldb[63:32];
                end
                ADDR_C_OFFSET_DATA_0: begin
                    rdata <= int_C_offset[31:0];
                end
                ADDR_C_OFFSET_DATA_1: begin
                    rdata <= int_C_offset[63:32];
                end
                ADDR_LDC_DATA_0: begin
                    rdata <= int_ldc[31:0];
                end
                ADDR_LDC_DATA_1: begin
                    rdata <= int_ldc[63:32];
                end
                ADDR_RM_DATA_0: begin
                    rdata <= int_RM[7:0];
                end
                ADDR_RN_DATA_0: begin
                    rdata <= int_RN[7:0];
                end
                ADDR_M0_DATA_0: begin
                    rdata <= int_m0[31:0];
                end
                ADDR_M0_DATA_1: begin
                    rdata <= int_m0[63:32];
                end
                ADDR_M_DATA_0: begin
                    rdata <= int_m[31:0];
                end
                ADDR_M_DATA_1: begin
                    rdata <= int_m[63:32];
                end
                ADDR_N0_DATA_0: begin
                    rdata <= int_n0[31:0];
                end
                ADDR_N0_DATA_1: begin
                    rdata <= int_n0[63:32];
                end
                ADDR_N_DATA_0: begin
                    rdata <= int_n[31:0];
                end
                ADDR_N_DATA_1: begin
                    rdata <= int_n[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign k                 = int_k;
assign A_offset          = int_A_offset;
assign lda               = int_lda;
assign B_offset          = int_B_offset;
assign ldb               = int_ldb;
assign C_offset          = int_C_offset;
assign ldc               = int_ldc;
assign RM                = int_RM;
assign RN                = int_RN;
assign m0                = int_m0;
assign m                 = int_m;
assign n0                = int_n0;
assign n                 = int_n;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_k[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_k[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K_DATA_0)
            int_k[31:0] <= (WDATA[31:0] & wmask) | (int_k[31:0] & ~wmask);
    end
end

// int_A_offset[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_offset[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_OFFSET_DATA_0)
            int_A_offset[31:0] <= (WDATA[31:0] & wmask) | (int_A_offset[31:0] & ~wmask);
    end
end

// int_A_offset[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_offset[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_OFFSET_DATA_1)
            int_A_offset[63:32] <= (WDATA[31:0] & wmask) | (int_A_offset[63:32] & ~wmask);
    end
end

// int_lda[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_lda[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LDA_DATA_0)
            int_lda[31:0] <= (WDATA[31:0] & wmask) | (int_lda[31:0] & ~wmask);
    end
end

// int_lda[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_lda[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LDA_DATA_1)
            int_lda[63:32] <= (WDATA[31:0] & wmask) | (int_lda[63:32] & ~wmask);
    end
end

// int_B_offset[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_offset[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_OFFSET_DATA_0)
            int_B_offset[31:0] <= (WDATA[31:0] & wmask) | (int_B_offset[31:0] & ~wmask);
    end
end

// int_B_offset[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_offset[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_OFFSET_DATA_1)
            int_B_offset[63:32] <= (WDATA[31:0] & wmask) | (int_B_offset[63:32] & ~wmask);
    end
end

// int_ldb[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ldb[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LDB_DATA_0)
            int_ldb[31:0] <= (WDATA[31:0] & wmask) | (int_ldb[31:0] & ~wmask);
    end
end

// int_ldb[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_ldb[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LDB_DATA_1)
            int_ldb[63:32] <= (WDATA[31:0] & wmask) | (int_ldb[63:32] & ~wmask);
    end
end

// int_C_offset[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_C_offset[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_OFFSET_DATA_0)
            int_C_offset[31:0] <= (WDATA[31:0] & wmask) | (int_C_offset[31:0] & ~wmask);
    end
end

// int_C_offset[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_C_offset[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_OFFSET_DATA_1)
            int_C_offset[63:32] <= (WDATA[31:0] & wmask) | (int_C_offset[63:32] & ~wmask);
    end
end

// int_ldc[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ldc[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LDC_DATA_0)
            int_ldc[31:0] <= (WDATA[31:0] & wmask) | (int_ldc[31:0] & ~wmask);
    end
end

// int_ldc[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_ldc[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LDC_DATA_1)
            int_ldc[63:32] <= (WDATA[31:0] & wmask) | (int_ldc[63:32] & ~wmask);
    end
end

// int_RM[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_RM[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RM_DATA_0)
            int_RM[7:0] <= (WDATA[31:0] & wmask) | (int_RM[7:0] & ~wmask);
    end
end

// int_RN[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_RN[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RN_DATA_0)
            int_RN[7:0] <= (WDATA[31:0] & wmask) | (int_RN[7:0] & ~wmask);
    end
end

// int_m0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_m0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_M0_DATA_0)
            int_m0[31:0] <= (WDATA[31:0] & wmask) | (int_m0[31:0] & ~wmask);
    end
end

// int_m0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_m0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_M0_DATA_1)
            int_m0[63:32] <= (WDATA[31:0] & wmask) | (int_m0[63:32] & ~wmask);
    end
end

// int_m[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_m[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_M_DATA_0)
            int_m[31:0] <= (WDATA[31:0] & wmask) | (int_m[31:0] & ~wmask);
    end
end

// int_m[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_m[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_M_DATA_1)
            int_m[63:32] <= (WDATA[31:0] & wmask) | (int_m[63:32] & ~wmask);
    end
end

// int_n0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_n0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_N0_DATA_0)
            int_n0[31:0] <= (WDATA[31:0] & wmask) | (int_n0[31:0] & ~wmask);
    end
end

// int_n0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_n0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_N0_DATA_1)
            int_n0[63:32] <= (WDATA[31:0] & wmask) | (int_n0[63:32] & ~wmask);
    end
end

// int_n[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_n[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_N_DATA_0)
            int_n[31:0] <= (WDATA[31:0] & wmask) | (int_n[31:0] & ~wmask);
    end
end

// int_n[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_n[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_N_DATA_1)
            int_n[63:32] <= (WDATA[31:0] & wmask) | (int_n[63:32] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
