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

RAG is used alongside LLM to retrieve data from images, databases, web, etc.
Use re-rankers with RAG.

### Techniques to Increase CPU Evaluation Speed
- Use BLAS (OpenBLAS) and MKL [How?]
- Use llama.cpp (better than BLAS?)
- Use llamafile (better than llama.cpp?)

### Backends and Formats
- Tensorflow
- GPT4All
- llama.cpp
- Ollama (wrapper for llama.cpp)
- kobold.cpp

| Backend   | Model Format |
| --------- | ------------ |
| llama.cpp | GGUF         |
| Exllama   | EXL4         |

### Frontends
- Open WebUI (formerly ollama-webui)
- LM Studio
- kobold.cpp
- SillyTavern
- biniou
- Oobagooba Text Generation WebUI
- AnythingLLM
- Jan.AI
- ExUI
- Chatbox
- BigAI
- Obsidian Fabric
- Msty

### Nuances
- Types of Architectures
	- [[AI Basics]]
- Types of Models
	- LLM
		- Can generate text
	- VLM
		- Can process images
	- Multimodal
		- Can process multiple forms of data
	- Stable Diffusion
		- For generative drawing
	- Reasoning Models
		- Can generate step-by-step reasoning
- Types of Modifications
	- Fine Tuned
		- DeepSeek-R1-Distilled models are actually fine-tuned with DeepSeek-R1
	- Distilled
		- Distilled models require the same base architecture
- RAG (For input data analysis)
	- Reranker (For getting results organized in the right order)

### Parameter Counts
- Parameter Counts (Knowledge)
	- 1.5B: Limited Knowledge
	- 7B: College Level Knowledge
	- 15B: College Level Knowlege
- Quantization
	- Type
		- K-Means (lower size)
		- IQ
	- BPW
		- 2-bit: Very Inaccurate
		- 4-bit: Good Balance
		- 8-bit: Close to FP16
		- FP16: Standard Release
		- FP32: Full-Fledged

### AI Optimization Techniques
- Mixture of Experts
	- Splits the Network into multiple layers, which function as 

---
In this section I got my answers from ChatGPT, but I read them through and typed all this myself.
### Requirements

1. VRAM Requirements
	1. Parts
		1. Weights Memory (Parameters in Billions x Bits per Weight / 8)
		2. Activation Memory (Parameters in Billions x Context Size / 1000) [Activation Memory supposedly depends on the number of layers in the model.. and maybe that's the 1000]
	2. Techniques
		- VRAM can be "offloaded" to System RAM
2. Bandwidth Requirements: Parameters in Billions x Bits per Weight / 8 x Tokens per Second
3. Inference Speed (of Query):
	1. Theory
		1. Compute Required for Transformers: FLOPs/token = 2 x Parameters x 2048
		2. Compute Speed of Hardware: FLOPS is the number of FLOPs per second
	2. Parts
		1. Tokens/Second = Hardware FLOPS / FLOPs per Token

### Rationale

A model requires accessing all the parameters for each token generated. That is why the bandwidth requirement includes transferring the entire size of the parameters.

Basically, transformer models operate in steps that involve forward passes through multiple layers of the network. That is:

1. Context and Token Generation
	1. **Context:** When we input a query, that is considered as the context, and the model will take take as much of it as it fits within the context window or token limit.
	2. **First Token Generation:** The model then uses this context to generate the next token. For this, it uses the context and its previous internal states (like activations) to predict the next token.
2. What Happens at Each Step
	1. **Auto-Regressive Nature of Transformers:** In Transformers, each token is dependent on the context and the tokens generated before it. For example, if you input "How are _ _ ", then it may use this context to generate "you", and then add it to the context and use this updated context to generate the next token, which could for example be "doing?".
	2. **Layer by Layer Calculation (Forward Pass):** In auto-regressive models, each time a token is predicted, the model performs a forward pass through its layers (e.g. attention layers, feed-forward layers).
		- At each step, it reads the weights in the memory to calculate the activations (the intermediate results of its computations) for that particular token.
		- It doesn't modify the weights, but instead, computes the activations based on the weights and uses them to generate the next token.

### Sample Calculations

**Sample Calculations on an Unquantized Model:**
Assume GPT-3.5, unquantized. It has 175B Parameters, in FP32 precision (32 BPW). We'll assume the Context Size as 2048 tokens. And we'll assume a token rate of 10 tokens per second.

- Memory: 
	- Weights Memory: 175B x 32 / 8 = 700 GB
	- Activation Memory = 175B x 2048/1000 = 358 GB
	- Total: 1058 GB > 1 TB
- Bandwidth: 175B x 32 / 8 x 10 = 7 TB/s
- Compute Required: 2 x 175B x 2048 = 717 TFLOPs per Token

A 7B unquantized model would thus require 1 TB VRAM, 7TB/s for 10 tokens/sec and 717 TFLOPs per token.

**Sample Hardware Estimates:**
NVIDIA A100 has 80 GB VRAM.

So one would need to offload the resources into the system memory.

NVIDIA H100 has 1.5 TB/s bandwidth, and that's much less than 7 TB/s required for 10 tokens per second, and would only suffice for a rate of 2 tokens per second.

And NVIDIA H100 has 1000 TFLOPS, and that means it can compute a maximum of 1000 / 717 = 1.4 tokens per second. And real world performance is only 30-50% of the theoretical peak, so one could expect 0.5-1 tokens per second on a single H100.

**Conclusion:**
Running GPT-3.5 is not feasible without relying on optimizations such as:
- Quantization (e.g. FP16, INT8, INT4)
- Offloading (to system RAM or disk)
- Model Parallelism (splitting the model across multiple GPUs)

### Scaling

**How Parallel GPUs Help:**
1. Distributed Memory: GPT-3.5 requires 700 GB VRAM to hold its weights, and an A100 only has 80 GB. However, 9 A100s can store the model together with a total memory of 720 GB.
2. Distributed Bandwidth: A single NVIDIA A100 has 1.6 TB/s bandwidth. But with 4 A100s, we can achieve up to 6.4 TB/s.
3. Distributed Compute: A single NVIDIA H100 provides up to 1000 TFLOPS, but 4 H100s would provide 4000 TFLOPS.

**Challenges and Solutions:**
1. **Inter-GPU Communication:** GPUs must communicate to exchange data (during attention calculations or to synchronize layers split across devices)
	1. Communication happens over NVLink or PCIe. NVLink has a maximum bandwidth of 900 GB/s, and PCIe 4.0 has a maximum of 32 GB/s
	2. This can become a bottleneck, especially for operations like attention, which involve large amounts of data transfer
3. **Model Partitioning**
	- These techniques require careful coordination and can introduce synchronization overhead.
	- Techniques
		1. **Tensor Parallelism:** Splits the weight matrices across GPUs, distributing compute and memory.
		2. **Pipeline Parallelism:** Splits the model's layers across GPUs, where each GPU processes a subset of layers.
4. **Scaling Efficiency:** Not all operations scale linearly with the number of GPUs. For example, attention calculations are communication bound, so adding more GPUs might not always result in a proportional setup. Practical scalability always saturates at 80-90% efficiency for well-optimized systems.