- Quantization Formats: GGUF, GPTQ, etc.
- Quantizations: FP8, Q6, Q5, Q4, Q3, IQ4, IQ3, IQ2
- Quantization Values
	- BPW (Bits Per Weight)

```
QUANTIZATION_BPWS = {
    "fp8": 8.0,
    "q6_k_s": 6.6,
    "q5_k_s": 5.5,
    "q4_k_m": 4.8,
    "IQ4_XS": 4.3,
    "q3_k_m": 3.9,
    "IQ3_XS": 3.3,
    "IQ2_XS": 2.4
}
```

- Get parameter count
- Memory Required = 
- Tokens / Second = RAM Bandwidth / Required Memory * 0.9
- Run Type
	- Works Well

Required Memory, Offload Ratio (to RAM), Tokens/Second, Context (maximum tokens remembered)


---

### Requirements
1. VRAM Requirements
	1. Parts
		1. Weights Memory (Parameters in Billions x Bits per Weight / 8)
		2. Activation Memory (Parameters in Billions x Context Size / 1000) [Activation Memory supposedly depends on the number of layers in the model.. and maybe that's the 1000]
	2. Techniques
		- VRAM can be "offloaded" to System RAM
2. Bandwidth Requirements: Parameters in Billions x Bits per Weight / 8 x Tokens per Second
3. Inference Speed:
	1. Theory
		1. For Transformers: FLOPs/token = 2 x Parameters x 2048
		2. For Hardware: FLOPS is the number of FLOPs per second
	2. Parts
		1. Tokens/Second = Hardware FLOPS / FLOPs per Token

**Sample Calculations:**
Assume GPT-3.5, unquantized. It has 175B Parameters, in FP32 precision (32 BPW). We'll assume the Context Size as 2048 tokens. And we'll assume a token rate of 10 tokens per second.

- Memory: 
	- Weights Memory: 175B x 32 / 8 = 700 GB
	- Activation Memory = 175B x 2048/1000 = 358 GB
	- Total: 1058 GB > 1 TB
- Bandwidth: 175B x 32 / 8 x 10 = 7 TB/s
- log (80 billion binary digit)


A 7B unquantized model would thus require 1 TB VRAM, 7TB/s for 10 tokens/sec and 717 FLOPs per token.

NVIDIA H100