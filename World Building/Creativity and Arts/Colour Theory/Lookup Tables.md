In computer science, lookup tables are arrays that replace a runtime computation with a simpler array indexing operation. This is  called direct addressing. LUTs differ from [[hash tables]] in that, to retrieve a value $v$ with a key $k$, a hash table would store the value $v$ in slot $h(k)$ where $h$ is the [[hash function]], i.e the slot has to be computed whereas in a LUT, the value is store in the slot $k$.

The savings in time can be significant, as accessing data from the memory is a lot faster than carryng out an "expensive" computation or I/O operation.

The tables maybe precalculated and stored in a static program storage as a part of the initialization phase, or even stored as application-specific platforms.

# Drawbacks
Although the performance of a LUT is $O(1)$, no two entities or values can have the same key. When the size of the LUT is large, it might be impractical to store in the memory. In this case, [[hash tables]] could be a preferable alternative.

# Types
- [[3D LUTs]] for image processing