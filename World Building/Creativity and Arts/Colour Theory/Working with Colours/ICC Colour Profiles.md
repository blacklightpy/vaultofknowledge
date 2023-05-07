They set the standard [Colour Profiles](Colour%20Profiles.md).

A profile describes a mapping between a [Colour Space](../Colour%20Modelling/Colour%20Spaces/Colour%20Space.md) and a profile connection space (PCS). PCSes are intermediate colour spaces that are used to transfer colours from one colour space to another. They are either [CIELAB](../Colour%20Modelling/Colour%20Spaces/CIELAB.md) or [CIEXYZ](../Colour%20Modelling/Colour%20Spaces/CIE%201931%20XYZ%20Colour%20Space.md).

# Gamut Mapping
**Example**
To convert an RGB colour space to a CMYK one:
- We first obrain both the ICC profiles.
- Then each RGB triplet is converted to the PCS using the RGB profile
- The PCS is, if necessary, converted between CIELAB and CIEXYZ, a well defined transformation
- The PCS is converted to the four values of CMYK requied using the CMYK profile.