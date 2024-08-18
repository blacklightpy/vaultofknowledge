It is the default [[Pseudorandom Number Generator|PRNG]] in Python, and is in the STL in C++ (C uses Linear Congruential Generator (LCG)). It is based on Linear Feedback Shift Register (LFSR), and hence, is reversible, and therefore not suitable for cryptography, but is good for use in physics simulations.

# Algorithm
## Brief
- Period: 2^19937 - 1
- Dimensions: 624
- State Size: 624 x 32
- Word Size: 32 bits
## Algorithm


# Drawbacks
- https://cs.stackexchange.com/questions/50059/why-is-the-mersenne-twister-regarded-as-good
# Seeding Surprises
- To Read: https://www.pcg-random.org/posts/cpp-seeding-surprises.html
# Reverse Engineering
- https://github.com/deut-erium/RNGeesus