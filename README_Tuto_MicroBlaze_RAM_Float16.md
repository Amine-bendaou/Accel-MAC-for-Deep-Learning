# MicroBlaze Tutorial: RAM-FPGA Communication for Floating-Point Data Processing

## Context

Welcome to this tutorial! Here, we will explore how to use a **MicroBlaze** processor to communicate between RAM and an FPGA, in order to store and process a larger number of floating-point values. This work builds on the first part of my internship, where I designed optimized blocks using **Flopoco** to perform addition, multiplication, and MAC operations in **float16** directly on the FPGA.

In the first part, all operations were performed using only the FPGA's **BRAM**. This works well for a small number of values, but we are limited by the BRAM size. The goal of this next step is to **process more values by using external RAM**, with the MicroBlaze managing the communication between the software (soft) and hardware (hard) sides of the FPGA.

Specifically, you will learn to:

* Design the **hardware** part using the existing floating-point blocks and integrate RAM to store the data.
* Develop the **software** part to control the MicroBlaze and manage communication between values stored in RAM and the FPGA.
* Optimize floating-point data processing to exceed the limits of using only BRAM.

This tutorial is designed to be progressive: we start by understanding the **hardware**, then move to the **software** part, clearly explaining each step and design choice.


---
