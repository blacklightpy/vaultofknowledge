CNN Structure: Backbone (Feature Detection) -> Neck (Scaling) -> Head (Classification and Localization)

- In **MobileNetV2-YOLOv3**, MobileNet is the backbone, some neck, and YOLOv3 is the head.
- In **YOLOv3**, DarkNet is the backbone, FPN is the neck and YOLOv3 is the head.
- In **YOLOv4**, CSPDarkNet53 (DarkNet53 + CSPNet strategy) is the backbone
- **Later YOLO examples**: Depends, like, ResNet or VGG for backbone, PAN for Neck, YOLO for head.

Base Networks / Backbones are trained on datasets like ImageNet.
Detection Networks:
- One-Stage: SSD, RetinaNet, YOLO, etc.
- Two-Stage: Faster-RNN, Masked R-CNN, etc.

Other Models:
- RTMDet (Real Time Object Detector)
- RT-DETR (Real Time Detection Transformer)
- YOLO Distributions
	- Ultralytics YOLO (most popular, AGPLv3 / commercial dual-licensed)
	- YOLO-NAS (Dect-AI's open code / non-commercial pre-trained weights build of YOLO)
	- YOLOX (Free, YOLOv3 with a DarkNet53 backbone)
	- DarkNet YOLO (original, still maintained)
	- MultimediaTechLab/YOLO (MIT licensed YOLOv7, YOLOv9 and YOLO-RD)
- YOLO derivatives
	- WALDO 3.0