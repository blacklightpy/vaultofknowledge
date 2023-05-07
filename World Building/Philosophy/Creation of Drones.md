## Hardware
**Control Unit**
1. Flight Controller
	1. ROM - Firmware - Code, Kalman Filters
	2. Processor
	3. Ports
	4. SD Card
2. Companion Computers
	1. Cores - VIO, SLAM
	2. Software - Ease of modification, API connections, Autopilot
	3. Communication to FC - ROS/MAVROS, Dronekit
	4. Communication to Server - Telemetry Unit
**Action Unit**
1. PDB
2. ESCs
3. Motors
4. Rotors
**Telemetry Unit**
LTE on Raspberry Pi
**Perception Unit**
1. IMU - Gyroscope, Accelerometer, Magnetometer
2. GPS
3. Vision System - Camera
**Power Unit**
1. Battery
**Skeleton Unit**
1. Chassis
2. Outer body
**Additional Functional Units**
1. Cargo box
2. Camera wiper

## Software
1. Mission Control Software and API
2. Autopilot System
3. Vision Control System
4. Weather Detection
5. No-Fly-Zone Detection
6. Any ATC Compliant Systems
7. RTL/Safe Emergency Landing
8. Logging System

## Algorithms
### Visual Inertial Odometry
In robotics and computer vision, visual odometry (VO) is the process of determining the position and orientation of a device by analyzing the associated camera images.

There are various types of VO:

1. Based on type of camera:
	1. Mono - Monocular Cameras
	2. Stereo - Stereo Camera
2. Feature based and Direct method
	1. Feature based - Tracking by extracting feature points from an image
	2. Direct method - Estimation based on pixel intensity as the visual input
	3. There are also hybrid methods
3. Visual Inertial Odometry (VIO)
	If a Inertial Measurement Unit (IMU) is used along with the VO system, it is commonly called VIO.

**Algorithm**
1. Acquire images - single camera, stereo cameras or omnidirectional cameras
2. Image correction - apply image processing techniques for lens dirt removal, etc.
3. Feature detection
	1. Use correlation to establish correspondence of two images, and no long term feature tracking. ([Feature tracking](https://en.wikipedia.org/wiki/Feature_tracking) ~ Motion Estimation<>Motion Vectors ~ Optical flow)
	2. Feature extraction and correlation
	3. Construct optical flow field ([Lucas-Kanade method](https://en.wikipedia.org/wiki/Lucas%E2%80%93Kanade_method))
5. Check flow field vectors for potential tracking errors and remove outliers.
6. Estimation of the camera motion from the optical flow
		1. Choice 1: [[Kalman Filter]] for state estimate distribution maintenance.
		2. Choice 2: find the geometric and 3D properties of the features that minimize a [[cost function]] based on the re-projection error between two adjacent images. This can be done by mathematical minimization or [random sampling](https://en.wikipedia.org/wiki/Random_sampling).
7. Periodic repopulation of trackpoints to maintain coverage across the image.

An alternative to feature-based methods is the direct or appearance-based visual odometry technique which minimizes an error directly in sensor space and subsequently avoids feature matching and extraction.

Another method, coined 'visiodometry' estimates the planar roto-translations between images using [Phase correlation](https://en.wikipedia.org/wiki/Phase_correlation "Phase correlation") instead of extracting features.

**~Egomotion~**

Egomotion is defined as the 3D motion of a camera within an environment. In computer vision, egomotion refers to estimating a camera's motion relative to a rigid scene. 

The estimation of egomotion is important in autonomous robot navigation applications.

###  Path Planning

### Collision Avoidance