The CIELCh or CIEHLC is a colour space based on either [[CIELUV]] or [[CIELAB]], which uses polar coordinates $C^*$ (chroma/relative saturation) and $h\degree$ (hue angle/angle of hue in the CIELUV/CIELAB colour wheel) instead of the cartesian coordinates $u^*$ and $v^*$/$a^*$ and $b^*$. The brightness $L^*$ remains unchanged.

$\text{CIELCh}_{ab}$ - Cylindrical CIELAB
$\text{CIELCh}_{uv}$ - Cylindrical CIELUV

## Conversion
**For CIELUV HLC**
$C^*_{uv}=\sqrt{{u^*}^2+{v^*}^2}$  
$h\degree_{uv}=atan(v^*/u^*)$ 

Furthermore, saturation correlate can be written as:
$s_{uv}=\frac{C^*_{uv}}{L^*} = 13\sqrt{(u'-u'_n)+(v'-v'_n)^2}$  
No such correlation for saturation exists for CIELAB HLC

**For CIELAB HLC:**
$C^*_{ab}=\sqrt{{a^*}^2+{b^*}^2}$  
$h\degree_{ab}=atan(b^*/a^*)$ 

$a^*=C^*cos(h\degree)$ 
$b^*=C^*sin(h\degree)$