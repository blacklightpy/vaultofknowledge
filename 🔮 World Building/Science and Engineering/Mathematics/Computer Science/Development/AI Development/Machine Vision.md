- Camera Selection: https://ocularcomponentmv.blogspot.com/2014/04/machine-vision-lens-and-camera.html

- Lens mount quality
	- CS < M12 < C (best for machine vision)
	- Use C mount for image sensors > 1/8"
	- M12 is suited only for sensors upto 1/8". Cheap M12 are only good upto 1/3". Expensive M12 do not have as much distortion as cheap M12 and are suitable for high resolution cameras and sensors upto 1/8".
	- CS mount is bad for machine vision. Mostly used in CCTV cameras.

- CS mount cameras can support M12 and C mount lenses with adapters.

# Considerations
- Sensor size
- FoV
	- At a fixed pixel size and a fixed aspect ratio your field of view will increase with increasing number of pixels. With this relation it is thus possible to decide between the IMX252 and IMX253
- Working Distance
- Optimized for Application (e.g. M12 is only distortion optimized for short distances, while C is optimized for more aberrations).
	- Find which aberrations can be corrected and which ones are acceptable, etc.
- Environment (for damping, etc.)
- Interface
	- MIPI CSI 2/3 | Camera Link | USB 3.0 | Gig-E | CoaXPress | SLVS-EC | Sub LVDS
- Range-estimation
	- ToF
	- Parallax