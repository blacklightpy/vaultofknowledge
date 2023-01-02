They set the standard [[Colour Profiles]].

A profile describes a mapping between a [[Colour Space]] and a profile connection space (PCS). PCSes are intermediate colour spaces that are used to transfer colours from one colour space to another. They are either [[CIELAB]] or [[CIE 1931 XYZ Colour Space|CIEXYZ]].

# Gamut Mapping
**Example**
To convert an RGB colour space to a CMYK one:
- We first obrain both the ICC profiles.
- Then each RGB triplet is converted to the PCS using the RGB profile
- The PCS is, if necessary, converted between CIELAB and CIEXYZ, a well defined transformation
- The PCS is converted to the four values of CMYK requied using the CMYK profile.