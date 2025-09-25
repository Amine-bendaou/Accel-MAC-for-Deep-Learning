# MicroBlaze Tutorial: RAM-FPGA Communication for Floating-Point Data Processing

## Context

Welcome to this tutorial! Here, we will explore how to use a **MicroBlaze** processor to communicate between RAM and an FPGA, in order to store and process a larger number of floating-point values. This work builds on the first part of my internship, where I designed optimized blocks using **Flopoco** to perform addition, multiplication, and MAC operations in **float16** directly on the FPGA.

In the first part, all operations were performed using only the FPGA's **BRAM**. This works well for a small number of values, but we are limited by the BRAM size. The goal of this next step is to **process more values by using external RAM**, with the MicroBlaze managing the communication between the software (soft) and hardware (hard) sides of the FPGA.

Specifically, you will learn to:

* Design the **hardware** part using the existing floating-point blocks and integrate RAM to store the data.
* Develop the **software** part to control the MicroBlaze and manage communication between values stored in RAM and the FPGA.
* Optimize floating-point data processing to exceed the limits of using only BRAM.

This tutorial is designed to be progressive: we start by understanding the **hardware**, then move to the **software** part, clearly explaining each step and design choice.

## Hardware Design

In this part, we will focus on how to create and integrate a **custom IP** in Vivado that communicates with the MicroBlaze through an **AXI interface**.  
The example used here is a multiplier with flopoco, but the method can be applied to any VHDL bloc (such as the floating-point adders, multipliers, or MACs designed with Flopoco).

---

### Step 1 – Create a Vivado Project
- Open **Vivado** and create a new project.  
- In **Project Manager → Settings → General**, set the target language to **VHDL**.  
- Instantiate a **Clocking Wizard IP** and configure it to generate a **100 MHz clock**.  
- Instantiate a **MicroBlaze IP**.  
- Run **Block Automation** and set the local memory to **32 KB**.  
- Run **Connection Automation** to connect the components.

---

### Step 2 – Create a Custom IP
- Go to **Tools → Create and Package IP**.  
- Choose **“Create a new AXI4 peripheral”**.  
- Give a name and (optionally) a short description to your IP.  
  > 💡 It’s a good practice to add a description for clarity.

---

### Step 3 – Configure the AXI Peripheral
- Keep the **Interface Type** unchanged (**AXI Lite**, by default).  
- Define the number of **AXI registers** your IP will use.  
  - Example: for my flopoco multiplier, one register is used to send the operand(s), a register is used to return the result, a register is used to start the process, and another one is used to notice that the multiplication is done.  
  - Note: Vivado requires at least **4 registers** even if fewer are needed.  
- Remember: a single 32-bit AXI register can pack multiple smaller vectors (e.g., two 16-bit inputs for X and Y in one register in my case).

---

### Step 4 – Open the IP for Editing
- A new Vivado session opens with the **Package IP – [your IP name]** tab.  
- This is where you will integrate your custom VHDL code.

---

### Step 5 – Add VHDL Design Source
- Add your **VHDL file** (e.g., `flopoco_multiplier.vhd`) as a design source for the IP. 

---

### Step 6 – Modify the Peripheral
- Open the `*_S00_AXI_inst` source file created by Vivado (e.g., `FP_Mult_slave_lite_v1_0_S00_AXI.vhd`) .  
- This is where you connect your custom VHDL logic to the AXI registers.  

---

### Step 7 – Add External Ports

* In the **port declaration section** of your `*_S00_AXI_inst` source file, locate the comment at the top:

  ```vhdl
  -- Users to add ports here
  ```
* Take all the inputs and outputs you previously declared in your imported VHDL block and add them in this section, between:

  ```vhdl
  -- Users to add ports here
  -- User ports ends
  ```
* Example:

  ```vhdl
  -- Users to add ports here
   X_in  : in  std_logic_vector(EXP_WIDTH+MANT_WIDTH downto 0);
   Y_in  : in  std_logic_vector(EXP_WIDTH+MANT_WIDTH downto 0);
   start : in  std_logic;
   R     : out std_logic_vector(EXP_WIDTH+MANT_WIDTH downto 0);
   done  : out std_logic;
  -- User ports ends
  ```

---

#### Declaring the Imported Component

* In the **architecture section**, just before the `begin` keyword, declare the component you imported.
* Example:

  ```vhdl
  component top_FPMult_Test is
    generic (
        EXP_WIDTH  : integer := 5;
        MANT_WIDTH : integer := 10
    );
    port (
        clk   : in  std_logic;
        rst   : in  std_logic;
        start : in  std_logic;
        X_in  : in  std_logic_vector(EXP_WIDTH+MANT_WIDTH downto 0);
        Y_in  : in  std_logic_vector(EXP_WIDTH+MANT_WIDTH downto 0);
        done  : out std_logic;
        R     : out std_logic_vector(EXP_WIDTH+MANT_WIDTH downto 0)
    );
  end component;
  ```

---

#### Instantiating and Mapping the Component

* At the bottom of the architecture, in the section:

  ```vhdl
  -- Add user logic here
  -- User logic ends
  ```
* Instantiate and port-map your imported block.
* Example:

  ```vhdl
  -- Add user logic here

  my_fp_mult : top_FPMult_Test
    generic map (
        EXP_WIDTH  => 5,
        MANT_WIDTH => 10
    )
    port map (
        clk   => S_AXI_ACLK,
        rst   => S_AXI_ARESETN,  -- active-low reset
        start => slv_reg1(0),    -- "start" controlled from register 1
        X_in  => slv_reg2(EXP_WIDTH+MANT_WIDTH downto 0),
        Y_in  => slv_reg2(31 downto EXP_WIDTH+MANT_WIDTH+1),
        done  => slv_reg0(0),
        R     => slv_reg3(EXP_WIDTH+MANT_WIDTH downto 0)
    );

  -- User logic ends
  ```

---

#### Register Mapping

* **Register 0** → status register (`done`)
* **Register 1** → control register (`start`)
* **Register 2** → inputs (`X` and `Y`)
* **Register 3** → output (`R`)

Each register is **32 bits wide**.

---

#### Important Note

If you want to expose **specific ports** of your block at the **IP top-level**, you must manually add them in the top-level file of your IP (e.g., `FP_Mult.vhd`).

This involves three steps:

1. **Declare the ports** in the `-- Users to add ports here ... -- User ports ends` section.
2. **Add them to the component declaration** in the architecture of `FP_Mult_slave_lite_v1_0_S00_AXI.vhd`.
3. **Map them in the port map** section of `FP_Mult_slave_lite_v1_0_S00_AXI.vhd`.

👉 A complete example of these files (`FP_Mult_slave_lite_v1_0_S00_AXI.vhd` and `FP_Mult.vhd`) is available in my Github just [here](https://github.com/Amine-bendaou/Accel-MAC-for-Deep-Learning/tree/main/Nexys-A7-100T-DMA-Audio-2018.2-1/ip_repo/FP_Mult_1_0/hdl).

### Step 8 – Merge and Repackage the IP

* In the **Package IP** tab, under *File Groups*, click on **Merge changes**.
* In the *Review and Package* tab, scroll down and click **Re-package IP**.
* In the *Ports and Interfaces* tab, click **Merge changes from ports and interfaces wizard**.
* Ensure that all steps are marked in green before proceeding.

  <span style="color:red">⚠️ Note: It is fine if you see **2 warnings** in the *Customization Parameters* section and **1 warning** in the *Ports and Interfaces* section.</span>

---

### Step 9 – Add the IP to Your Design

* Go back to your original Vivado project session.
* Refresh and update the IP catalog (**Refresh IP catalog → Upgrade selected → Generate**).
* You should now be able to instantiate your newly created IP from the **IP library**.
* Open your block design and add the IP by searching for it in the search bar.
* Right-click on the design, select **Create HDL Wrapper**, and let Vivado manage the wrapper with auto-update.

---

### Step 10 – Generate the Bitstream

* Run synthesis, then implementation, and finally **generate the bitstream**.
* Once complete, go to the **Address Editor** tab.
* Verify the register addresses assigned to your IP and other peripherals.

 <span style="color:red">⚠️ Make sure there are no unassigned addresses.</span>

---

### Step 11 – Export Hardware to Vitis

* After generating the bitstream, go to **File → Export → Export Hardware**.
* In the wizard, click **Next**, select **Include bitstream**, then click **Next** and **Finish**.
* An `.xsa` file is created, which you will use later in **Vitis**.

---

At this stage, your custom VHDL block is fully integrated as an AXI peripheral, instantiated in Vivado, and ready to be accessed from C code in **Vitis**. Now, let’s move on to the **Software part in Vitis**.

## Software Design

- After completing the tutorial available on my [GitHub](https://github.com/Amine-bendaou/Accel-MAC-for-Deep-Learning/blob/main/README_Tuto_Vitis_unified_2025.md) (which explains how to correctly configure a Vitis 2025 project with a simple *Hello World* example), navigate to your `.c` file inside the **source** folder of the application you created.
- Replace the default code provided by Vitis with your own, adapting it to your project.
- An example of a workspace is also available on my [GitHub](https://github.com/Amine-bendaou/Accel-MAC-for-Deep-Learning/tree/main/Nexys-A7-100T-DMA-Audio-2018.2-1/vitis_workspace_2025) as a reference. This example demonstrates how to write a `main.c` that enables communication between RAM and the hardware through MicroBlaze, allowing the user to enter input values in the terminal and display the computed results.

- Once your workspace is configured and your C file is adapted, you need to import the **XSA file** generated previously in Vivado.  
  Go to **Platform → Settings → vitis-comp.json**, then perform **Switch / Re-read XSA** and select the XSA file you exported earlier.

- Next, build the **platform**, then build the **application**, and finally run it.

<span style="color:red">⚠️ **Important:**  
<span style="color:red"> If your code requires communication with the terminal via UART, you must open a terminal **before running your application** and execute the following command:  
> ```bash
> sudo tio -b 230400 /dev/ttyUSB1
> ```  
<span style="color:red"> This allows you to establish a serial connection with the MicroBlaze over UART.

---

## Notes

- When you modify your XSA in Vivado (e.g., by adding or changing an IP), it is strongly recommended to **create a new application** in Vitis instead of reusing the old one.  
- Import all your source files (`.c`, `.h`, `.ld`) from the previous application into the new one, and associate it with the newly generated platform based on the updated XSA.  
- This avoids unexpected bugs, such as the terminal showing default placeholder values (`0xDEC0DE1C`) for all defined registers, which typically occur when switching to a new XSA inside an existing application.

 



