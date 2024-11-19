### Intel NCS2

Easily supports 2 DNN frameworks: Tensorflow, Caffe
Also works efficiently with Caffe based CNNs.

NOTE: OpenVINO platform: Input (TF/Caffe Trained Model) -> Output (Movidius, CPU, Embedded gen GPU Target)

Basically OpenVINO is a "Neural Network Compression Framework (NNCF)"

**Deep Learning Models**
- SqueezeNet
- GoogLeNet
- Tiny YOLO
- MobileNet SSD
- AlexNet

### The Google Edge TPU (aka Google Coral)

The Edge TPU comes in a USB stick variant. It is a small ASIC for high performance ML inferencing on low-end devices.

It can easily execute the latest mobile version models including MobileNet V2 at 100+ fps.
Supports TensorFlow Lite easily.

Can easily execute deep feed forward NNs (DFFs) including CNNs, which makes it a good choice for different vision based ML applications.

### NVIDIA Jetson Nano

Uses Tegra SoC
