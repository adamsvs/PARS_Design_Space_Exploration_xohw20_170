// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// S_AXI_BUNDLE
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x200 ~
// 0x3ff : Memory 'a' (256 * 16b)
//         Word n : bit [15: 0] - a[2n]
//                  bit [31:16] - a[2n+1]
// 0x400 ~
// 0x5ff : Memory 'c1' (256 * 16b)
//         Word n : bit [15: 0] - c1[2n]
//                  bit [31:16] - c1[2n+1]
// 0x600 ~
// 0x7ff : Memory 'c2' (256 * 16b)
//         Word n : bit [15: 0] - c2[2n]
//                  bit [31:16] - c2[2n+1]
// 0x800 ~
// 0x9ff : Memory 'm' (256 * 16b)
//         Word n : bit [15: 0] - m[2n]
//                  bit [31:16] - m[2n+1]
// 0xa00 ~
// 0xbff : Memory 'p' (256 * 16b)
//         Word n : bit [15: 0] - p[2n]
//                  bit [31:16] - p[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_AP_CTRL 0x000
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_GIE     0x004
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_IER     0x008
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_ISR     0x00c
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_A_BASE  0x200
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_A_HIGH  0x3ff
#define XRLWE_ENC2_S_AXI_BUNDLE_WIDTH_A      16
#define XRLWE_ENC2_S_AXI_BUNDLE_DEPTH_A      256
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_C1_BASE 0x400
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_C1_HIGH 0x5ff
#define XRLWE_ENC2_S_AXI_BUNDLE_WIDTH_C1     16
#define XRLWE_ENC2_S_AXI_BUNDLE_DEPTH_C1     256
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_C2_BASE 0x600
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_C2_HIGH 0x7ff
#define XRLWE_ENC2_S_AXI_BUNDLE_WIDTH_C2     16
#define XRLWE_ENC2_S_AXI_BUNDLE_DEPTH_C2     256
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_M_BASE  0x800
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_M_HIGH  0x9ff
#define XRLWE_ENC2_S_AXI_BUNDLE_WIDTH_M      16
#define XRLWE_ENC2_S_AXI_BUNDLE_DEPTH_M      256
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_P_BASE  0xa00
#define XRLWE_ENC2_S_AXI_BUNDLE_ADDR_P_HIGH  0xbff
#define XRLWE_ENC2_S_AXI_BUNDLE_WIDTH_P      16
#define XRLWE_ENC2_S_AXI_BUNDLE_DEPTH_P      256

