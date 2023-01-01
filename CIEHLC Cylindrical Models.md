The CIELCh or CIEHLC is a colour space based on either [[CIELUV]] or [[CIELAB]], which uses polar coordinates $C^*$ (chroma/relative saturation) and $h\degree$ (hue angle/angle of hue in the CIELUV/CIELAB colour wheel) instead of the cartesian coordinates $u^*$ and $v^*$/$a^*$ and $b^*$. The brightness $L^*$ remains unchanged.

$\text{CIELCh}_{ab}$ - Cylindrical CIELAB
$\text{CIELCh}_{uv}$ - Cylindrical CIELUV

## Conversion
**For CIELUV HLC**
$C^*=\sqrt{{a^*}^2+{b^*}^2}$  
$h\degree=atan(b^*/a^*)$ 

**For CIELAB HLC:**
$C^*=\sqrt{{a^*}^2+{b^*}^2}$  
$h\degree=atan(b^*/a^*)$ 

$a^*=C^*cos(h\degree)$ 
$b^*=C^*sin(h\degree)$
