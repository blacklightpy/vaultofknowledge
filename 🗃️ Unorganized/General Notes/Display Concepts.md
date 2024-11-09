### Display Hardware Standards
#### **Display Interfaces & Outputs**

(Hardware interfaces for outputting display signals)

- **DVI**, **HDMI**, **DisplayPort (DP)**, **VGA**
- **USB-C / Thunderbolt** (Video output and data transfer)
- **Multi-Stream Transport (MST)** (Daisy-chaining multiple monitors over a single cable)
#### **Media Protection Protocols**

(Content protection protocols to prevent unauthorized access to digital media)

- **HDCP (High-bandwidth Digital Content Protection)** (Content protection for digital media)

#### **Display Standards & Protocols**

(Standards and protocols for defining display modes and communication)

- **EDID (Extended Display Identification Data)**
- **VESA Modelines** (Defines resolution timings and modes, often conveyed via EDID)

---

### Software Technologies
#### **Low-Level Display Management**

(Handles direct hardware interaction for display output)

- **KMS (Kernel Mode Setting)**
- **Framebuffer**
- **DRM (Direct Rendering Manager)**

---

#### **Graphics APIs & Stacks**

(Handles rendering and graphical computation)

- **Standards**:

    - **OpenGL**
    - **Vulkan**
    - **DirectX**
    - **Metal** (Apple’s proprietary graphics API)
- **Implementations**:
    
    - **Mesa** (OpenGL, Vulkan implementation)
    - **LLVMpipe** (Software rasterizer for OpenGL)
    - **Nouveau** (Open-source **NVIDIA** driver, separate from Mesa)

---

#### **Display Protocols**

(Handles how display systems interact with graphics hardware and manage windows/screens)

##### **General Concepts**

- **Compositing**
    - **Compositing Effects** (Shadows, transparency, animations)
    - **Software vs Hardware Compositing** (Performed by the CPU vs the GPU)
- **Window Management**
    - **Tiling Window Management** (Organizing windows without overlapping)
    - **Floating Window Management** (Allowing windows to overlap freely)
    - **Window Placement** (How windows are positioned when opened)

##### **Protocols**

- **X11** (Display protocol, also known as X Window System)
    
    - **Xorg** (Compositor backend for X11)
    - **XWayland** (Bridge for running X11 apps on Wayland)
- **Wayland** (Modern display protocol)
    
    - **Wayland Compositors**
        - **Mutter**
        - **Weston**
        - **KWin**
        - **Sway**
        - **Wayfire**
- **MIR** (Canonical's display protocol, primarily used with Ubuntu)
    
    - **MIR Compositors** (e.g., **MIR server**)

---

### **Key Visual Concepts**

#### High Level Concepts

(High-level principles governing the user experience)

- **Resolution** (The number of pixels displayed on the screen, e.g., 1920x1080)
- **Refresh Rate** (How many times per second the image is updated)
- **Aspect Ratio** (The proportional relationship between width and height, e.g., 16:9, 4:3)
- **Scaling**
    - **Integer Scaling** (Scaling by whole-number factors for sharper images)
    - **Display Scaling** (Scaling UI elements proportionally to fit screen size or resolution)
- **Visual Aspects**
    - **Tearing** (Visual artifact when frames are drawn out of sync with the monitor’s refresh rate)
    - **V-Sync** (Vertical synchronization to prevent tearing)
    - **VRR (Variable Refresh Rate)** (A technology that syncs the display refresh rate to the GPU’s frame rate)
- **Latency** (Input lag, frame rendering delay)
#### **Color & Visual Fidelity Concepts**

(Concepts related to color accuracy and visual quality)

- **Color Depth** (Number of bits used for color representation)
- **Color Space** (e.g., **sRGB**, **Adobe RGB**, **DCI-P3**)
- **Gamma Correction** (Adjusts brightness for non-linear perception)

---

### **Graphics Processing Hardware**

(Physical components responsible for rendering and display output)

- **GPU (Graphics Processing Unit)**
    - **GPU Memory (VRAM)**
    - **GPU Offloading** (Using the GPU to accelerate non-graphical workloads)

---

### Tools
#### **Remote Display & Virtualization**

(Tools and protocols for accessing or virtualizing remote displays)

- **VNC (Virtual Network Computing)**
- **RDP (Remote Desktop Protocol)**
- **SPICE (Simple Protocol for Independent Computing Environments)**

---

# More Concepts

### Display Devices

#### **Embedded Displays**

- Touchscreen Displays
- Embedded Linux Framebuffers
- OLED, LCD, and E-Ink Displays

---

### Display Device Quality Control

#### **Display Portability and Accessibility**

- Display Mirroring
- Multi-Monitor Support
- Accessibility Features

---

### Display Hardware Standards


---

### Display Hardware Standards / Software Interface

#### **Display Hotplugging**

- EDID (Extended Display Identification Data)
- DPMS (Display Power Management Signaling)
- Hotplug Events

#### **V-Sync and Frame Rate Cap**

- Tearing
- Frame Rate Capping
- Adaptive Sync

---

### Software Technologies (OS Level)
#### **Framebuffer**

#### **Framebuffer Devices**

- /dev/fb0
- Framebuffer Drivers

#### **Direct Rendering**

- Direct Rendering Infrastructure (DRI)
- OpenGL Direct Rendering

#### **Display Protocol Stack**

- XCB (X C Binding)
- Wayland Protocols
- XRender

---

### Software Level (User)

#### **Screen Rotation and Orientation**

- Landscape/Portrait Mode
- Rotate Mode in X11/Wayland

#### **Display Color Calibration**

- ICC Profiles
- Color Temperature
- Hardware Calibration

---

### Graphics Processing Hardware
#### **GPU Rendering Pipelines**

- Vertex Processing
- Rasterization
- Fragment Processing
- Shader Programs
- Ray Tracing

#### **Display Memory Management**

- Unified Memory
- Memory Mapping
- Memory Leak

---

### **Non-Display Concepts**

- Texture Mapping
- Anti-Aliasing
- Post-Processing Effects
- Frame Buffers and Buffers in VR