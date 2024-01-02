**Links:** [[AI Basics]]

## Metrics
- TOPS
**Network based benchmarks**
- ResNet-50 deep neural network processing

## Notes
### Apple on TOPS
Apple A13 Bionic - 8 core Neural Engine, 5 TOPS
Apple A14 BIonic - 16 core Neural Engine, 11 TOPS

A14 is said to be 2x faster than A13
A14 is said to be 10x faster in calculations than A12. But that seems to be referring to the machine learning accelerators on the CPU, which might be the primary processor of unspecified tasks or the secondary processor when the Neural Engine or GPU are otherwise occupied.

A13's Neural Engine is dedicated to machine learning, assisted by two machine learning accelerators on the CPU, plus a Machine Learning Controller to automatically balance efficiency and performance, by dynamically allocating AI tasks to the CPU, the GPU or Neural Engine.

### Qualcomm on TOPS
Qualcomm generally specifies the entire details, unlike Apple.

Qualcomm talks about how it distributes various AI tasks to multiple specialized processors, and also provides a TOPS figure as a simple summary metric.

Snapdragon 865 (Smartphone focused) - 15 TOPs
2nd gen Snapdragon 8cx (Laptop chip) - 9 TOPS
less expensive 8c - 7 TOPS
7c - 5 TOPS

![[Snapdragon 865 Metrics.png]]

**865 5G AI Highlights**
- Adreno 650
	- New AI mixed precision instructions
	- 2x higher TOPS
	- 16-bit and 32-bit FP
- Hexagon 698
	- 4x higher TOPS
	- Upto 35% power savings
	- Deep learning bandwidth compression
- LP-DDR5 Memory
	- 30% more bandwidth
- 5th gen Qualcomm AI Engine
	- 15 TOPS
- Qualcomm Neural Processing SDK
	- New features and improvements
- NNAPI Support
	- 3x number of accelerated operators
	- Optimized for Google ASR and Google Lens
- Hexagon NN Direct
	- Provides developers direct access to Hexagon
- AI model efficiency toolkit
	- Data free quantization
	- Quantization aware training
	- Model compression

LIke prior Snapdragon chips, the 865 includes a "Qualcomm AI Engine" that aggregates AI performance across processors ranging from the Kryo CPU and Adreno GPU to a Hexagon digital signal processor (DSP). Qualcomm's latest AI engine is 5th gen, including an Adreno 650 GPU with 2x higher TOPS for AI than the prior generation, plus new AI mixed precision instructions, and a Hexagon 698 DSP claiming 4x higher TOPS, etc.

It appears Qualcomm is adding the seperate chips' numbers together to arrive at its 15 TOPS total. It's akin to adding multiple diamonds with a large total karat weight or one diamond with a similar but slightly lower weight.

### Huawei, Mediatek and Samsung on TOPS
Huawei's HiSilicon division made flagship chips called the Kirin 990 and Kirin 990 5G, which differentiate their Da Vinci neural processing units with either two- or three-core designs. Both Da Vinci NPUs include a "tiny core," but the 5G version jumps from one to two "big cores," giving the higher end chip extra power. The company says the tiny core can delivery upto 24x the efficiency of a big core for AI facial recognition, while the big core handles heavier tasks. Huawei doesn't disclose the TOPS number for either Kirin 990 variant. The chips have been discontinued due to a ban by the US, as of 2020.

Mediatek's current Flagship is the Dimensity 1000+, and it includes and AI processing unit called the APU 3.0. Alternately described as a hexa-core processor or a six AI processor solution, the APU 3.0 promises upto 4.5 TOPS performance. Since Mediatek processors are designed for midrange smartphones and devices, it is unsurprising that they are not leading the pack in terms of performance.

Lastly, Samsung's Exynos 990 has a dual-core neural processing unit paired with a DSP, promising "approximately 15 TOPS." The company says its AI features enable smartphones to include "intelligent camera, virtual assistant and extended reality" features, including camera scene recognition for improved image optimization. Samsung notable uses Qualcomm's Snapdragon 865 as an alternative to the Exynos 990 in many markets, which observers have taken as a sign that Exynos chips just can't match Snapdragons.


### Cloud Services
While mobile processors have become popular and critically important, they're not the only chips with dedicated AI hardware in the marketplance, nor are they the most powerful. Designed for datacenters, Qualcomm's Cloud AI 100 inference accelerator promises up to 400 TOPS of AI performance with 75 watts of power, though the company uses another metric - ResNet-50 deep neural network processing - to favorably compare its inference performance to rival solutions such as Intel's 100-watt Habana Goya ASIC (~4x faster) and Nvidia's 70-watt Tesla T4 (~10x faster)