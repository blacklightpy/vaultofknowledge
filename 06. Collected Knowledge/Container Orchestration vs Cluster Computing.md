Well, it can't work like a cluster computer.

Each pod has to run on a single node.

We can run parallel workloads, but a single workload has to run on a single node.

Multithreading works because programs are written to take advantage of threads.

But in distributed computing, different nodes run on different kernels and address spaces.

We can write massively distributed systems (e.g. Google Search), but they have to be written that way.