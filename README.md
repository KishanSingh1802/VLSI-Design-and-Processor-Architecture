# VLSI Design & Digital System Architecture 

This repository contains the RTL designs developed during my VLSI Internship at Codtech IT Solutions. The project focuses on designing, simulating, and verifying core digital components using Verilog and Xilinx Vivado.

## 🛠️ Projects Included

### 1. 8-bit Arithmetic Logic Unit (ALU)
- **Functions:** Addition, Subtraction, AND, OR, NOT.
- **Tools:** Verilog, Xilinx Vivado.
- **Logic:** Implemented using behavioral modeling with a focus on optimized gate-level synthesis.

### 2. Synchronous 16x8 RAM Module
- **Specs:** 16 locations, 8-bit data width.
- **Features:** Single-clock synchronous read/write operations with reset logic.

### 3. 4-Stage Pipelined Processor
- **Stages:** Instruction Fetch (IF), Instruction Decode (ID), Execute (EX), and Write Back (WB).
- **Goal:** Maximizing instruction throughput by overlapping execution stages.

### 4. 3-Tap Digital FIR Filter
- **Architecture:** Multiply-Accumulate (MAC) logic.
- **Application:** Real-time digital signal processing.

## 🚀 Tools Used
- **HDL:** Verilog
- **Simulation/Synthesis:** Xilinx Vivado
- **Analysis:** Waveform Simulation & Timing Analysis

## 📈 Key Results
- Successfully verified all modules through extensive Testbench simulations.
- Analyzed the Pipelined Processor for instruction hazards and throughput efficiency.
