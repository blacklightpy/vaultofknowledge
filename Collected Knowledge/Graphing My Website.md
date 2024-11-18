- ObsidianHTML uses vasturiano/force-graph (3D) and vasturiano/2d-force-graph (2D)
- Both are based on d3-force library.
# Ideas
There are some ideas from d3-force gallery like:
- [Mobile Patent Suites](https://observablehq.com/@d3/mobile-patent-suits?collection=@d3/d3-force) (Named nodes with unidirectional arrow links)
- [Temporal Force Graph](https://observablehq.com/@d3/temporal-force-directed-graph?collection=@d3/d3-force)
- [Disjoint force-directed graph](https://observablehq.com/@d3/disjoint-force-directed-graph/2?collection=@d3/d3-force) (Prevents nodes from going outside the viewport)

For other libraries:
- [Prefuse | Java Library](https://www.youtube.com/watch?v=dCLc6oB3Q3o) (Temporal visualization of a wiki, with node sizes representing activity)
# Considerations
One may expect the graph to look like this:
![[Force Graph.png]]

But in reality, notes are not always highly cohesive and lowly coupled. Ideas are very often connected, and there's a fundamental unity between things.

If we view them through specific perspectives, we will find a branched hierarchy in the manner you would expect, but in reality there are not many such distinctions.