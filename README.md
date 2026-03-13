
# Tomasulo Out-of-Order Execution Engine (Verilog RTL)

## Overview

This project implements a simplified **Out-of-Order CPU execution engine**
based on the **Tomasulo algorithm** using **Verilog RTL**.

The goal of this project is to demonstrate key concepts used in modern
CPU microarchitectures such as dynamic instruction scheduling,
instruction-level parallelism, and result broadcasting.

The design was simulated using **Icarus Verilog** on **EDA Playground**
with waveform visualization using **EPWave**.

---

## CPU Microarchitecture Concepts Implemented

This project demonstrates several core CPU architecture mechanisms:

• Reservation Stations  
• Dynamic Instruction Scheduling  
• Execution Units  
• Common Data Bus (CDB)  
• Instruction Queue  
• Register File  
• Result Broadcast  

These mechanisms are used in modern processors developed by companies like
Intel, AMD, Apple, Qualcomm, and NVIDIA.

---

## Architecture Diagram
Instruction Queue
↓
Reservation Station
↓
Execution Unit
↓
Common Data Bus
↓
Register File Update
