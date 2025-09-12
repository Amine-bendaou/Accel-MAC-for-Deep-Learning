# Tutorial: Create and Run a ‘Hello World’ Program on Nexys A7 with Vitis 2025.1 Unified IDE

This tutorial explains step by step how to create and run a `Hello World` program on the Nexys A7 board using the Vitis Unified IDE.

---

## Prerequisites

- Nexys A7 board
- Vitis Unified IDE installed
- Ready-to-use hardware design file (.xsa)
- USB connection between the board and the computer

---

## Step 1: Set the Workspace

1. Open Vitis Unified IDE.
2. On the welcome page, click **Set Workspace**.
3. Specify an empty folder for the workspace.
4. Click **OK**.

---

## Step 2: Create a Platform Component

1. Click **Create Platform Component**.
2. Choose a name for the component.
3. Click **Next**.

<img title="" src="pictures/Screenshot from 2025-09-10 16-20-03.png" alt="" width="475">

4. Select **Hardware Design** and choose the `.xsa` file corresponding to your hardware design.
5. Click **Next**.

<img title="" src="pictures/Screenshot from 2025-09-10 16-48-03.png" alt="" width="475">

6. Wait a few seconds for the **Operating System** and **Processor** fields to fill automatically.
7. Click **Next**.

<img title="" src="pictures/Screenshot from 2025-09-10 16-22-46.png" alt="" width="475">

8. Click **Finish**.

---

## Step 3: Create a ‘Hello World’ Software Project

1. In the left sidebar, go to the **Examples** section.
2. Under **Embedded Software Examples**, look for **Hello World**.
3. Click the **+** sign to create a project from the example.
4. Choose a name for the project (e.g., `hello_world`).
5. Click **Next**.

<img title="" src="pictures/Screenshot from 2025-09-10 16-28-27.png" alt="" width="475">

6. Select the platform created earlier.
7. Click **Next**.

<img title="" src="pictures/Screenshot from 2025-09-10 16-50-58.png" alt="" width="475">

8. Click **Next** again.

<img title="" src="pictures/Screenshot from 2025-09-10 16-31-19.png" alt="" width="475">

9. Click **Finish**.

<img title="" src="pictures/Screenshot from 2025-09-10 16-31-27.png" alt="" width="475">

A `.c` file will automatically open in the editor.

---

## Step 4: Build and Run the Project

1. Go to **Vitis Explorer** (house-shaped icon).
2. In the **Flow** section at the bottom:
   - Select the **Platform** component.
   - Click **Build**.
3. Next, select the **hello_world_app** component.
4. Click **Build** to compile the program.
5. Open a terminal and enter the following command to access the serial console:
   ```bash
   sudo tio -b 230400 /dev/ttyUSB1
   ```
6. Go back to Vitis and click Run to execute the program on the board.
7. The message `Hello World` will appear in the terminal.

---

## Notes

- Make sure the USB port corresponding to your Nexys A7 is correct (`/dev/ttyUSB1`).
- The communication speed is 230400 baud.
- If the terminal does not display, check the USB connections and permissions.
- **Please note that the default keyboard layout in Vitis 2025.1 Unified is QWERTY, not AZERTY. To use standard shortcuts (like CTRL + Z or CTRL + A), you need to change a setting. Go to File → Preferences → Settings. In Settings, navigate to Application → Keyboard, and under the Dispatch section, select Code.**

---

This tutorial provides a quick start with a simple project on Nexys A7 and Vitis Unified IDE.
