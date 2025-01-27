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

Required Memory, Offload Ratio (to RAM), Tokens/Second, Context (maximum tokens rememberable)