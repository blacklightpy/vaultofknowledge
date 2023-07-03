Diff is short for difference, which is the set of changes between two files.

> [!NOTE] Example
> For a simple example, the diff between the texts "Hello" and "Hello Robin!" is the text " Robin!"

The process itself is called diffing, and the output is called patch or delta. The delta can be either in text or binary.

Text deltas are generally used for comparing source code files, whereas binary deltas are used to patch binary files by only transferring the changes over.

# Diffing Algorithms
- bsdiff
- Bentley-McIlroy
- Myer's algorithm
- XDelta

# Diff formats
- UNIX .delta
- VCDiff