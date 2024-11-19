They are a class of [[Colour Space|colour spaces]] suggested by Elliot Quincy Adams. They are of two types: Chromatic value spaces and Chromatic valence spaces.

Two important chromatic value/valence spaces are [[CIELUV]] and [[Hunter Lab]].

Chromatic value/valence spaces are notable for incorporating the [[Opponent Processes]] model and the empirically determined $2^{1/2}$ factor in the red/green vs blue/yellow chromaticity components (such as in [[CIELAB]]).

# Types
- Chromatic value spaces
	- In 1942, Adams suggested chromatic value colour spaces. Chromatic values, or chromance refers to the intensity of the [[Opponent Processes|opponent process]] responses and is derived from Adams' theory of olour vision.
	- A chromatic value space consists of three components
		- $V_Y$, the [[Munsell Colour System|Munsell-Sloan-Godlove value function]]
		  $V_Y^2=1.4742Y-0.004743Y^2$
		- $V_X-V_Y$, the red-green chromaticity dimension
		- $V_Z-V_Y$, the blue-yellow chromaticity dimension
	- A chromatic value diagram is a plot of $V_X-V_Y$ (horizontal axis) vs $0.4(V_Z-V_Y)$ (vertical axis). The $2^{1/2}$ scale factor is intended to make the radial distance from the [[White Point]] correlate with the Munesell chroma along any one hue radius (i.e. to make the diagram perceptually uniform).
	- For achromatic surfaces $(y_n/x_n)X=Y=(y_n/x_n)Z$, and hence $V_X-V_Y=0, V_Z-V_Y=0$. In other words, the [[White Point]] is at the origin
	- Constant differences in the chroma dimension did not appear different by a corresponding amount, so Adamns proposed a new class of spaces named chromatic valence.
- Chromatic valence spaces
	- These spaces have nearly equal radia distances for equal changes in Munsell chroma.
	- They incorporate two relatively [[Uniform Colour Spaces|perceptually uniform]] elements: a chromaticity scale and a lightness scale.
	- The [[Lightness]] scale is determined using the [[Lightness|Newhall-Nickerson-Judd value function]], and forms one axis of the colour space.
	- The remaining two axes are formed by multiplying the two uniform chromaticity coordinates by the lightness, $V_J$
	- $\frac{X/x_n}{Y/y_n}-1=\frac{X/x_n-Y/y_n}{Y/y_n}$
	  $\frac{X/x_n}{Y/y_n}-1=\frac{X/x_n-Y/y_n}{Y/y_n}$ 
	  - This is essentially what Hunter used in his [[Hunter Lab|Lab colour space]].
	  - As with chromatic value, these functions are plotted with a scale factor of $2^{1/2}$ to give nearly equal radial distance for equal changes in Munsell chroma.

# Colour Difference
Adam's colour spaces rely on the [[Munsell Colour System|Munsell value]].

Defining chromatic valence components
$W_X=(\frac{x/x_n}{y/y_n}-1)V_J$ and
$W_Z=(\frac{z/z_n}{y/y_n}-1)V_J$
we can determine the [[Colour Difference]] $\Delta{E} =\sqrt{(0.4\Delta{V_J})^2+(\Delta{W_X})^2+(0.4\Delta{W_Z})^2}$ 

where $V_J$ is the Newhall-Nickerson-Judd-value function and the 0.4 factor is incorporated to better make the differences in $W_X$ and $W_Y$ correspond to one another.

In chromatic value colour spaces, the chromaticity components are $W_X=(V_X-V_Y)$ and $W_Z=V_Z-V_Y$. The difference is: $\Delta{E} =\sqrt{(0.23\Delta{V_Y})^2+(\Delta{W_X})^2+(0.4\Delta{W_Z})^2}$ 

where $V_Y$, the [[Munsell Colour System|Munsell-Sloan-Godlove value function]] is applied to the tristimulus value indicated in the subscript.