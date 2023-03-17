Used to reduce current flow.

1. In practice, we calculate the required resistance and then use the NSV (Nearest Standard Value)
2. Make sure the resistor is rated to handle the power dissipated through it, or else the resistor may burn, or worse, even burn you. 10W is a very high value for example.

### Variable Resistors
- Potentiometers
	- Varies voltage (3 terminal)
	- Can be wired as a rheostat too
- Rheostats
	- Varies current (2 terminal)

### Form factors
The resistor sizes can matter in reducing the size of the circuit. Generally, SMD resistor sizes are given in a 4 digit code, either in Imperial or Metric formats. Usually, larger the size, larger the resistance.

Other form factors include the old style through hole resistors, and metal wire wound resistors for larger resistances.

### Reading Resistor values
#### Based on type of resistors
1. Carbon film through hole
	- 4 band color code
	- Bands 1,2 - first two digits
	- 3rd band - number of zeroes
	- 4th band - tolerance (G,S,None - 5/10/20%)
2. Metal film through hole
	- 5 band color code
	- Bands 1,2,3 - first 3 digits
	- 4th band - number of zeroes
	- 5th band - tolerance (brown - 1%; for others, consult manufacturer)
3. SMD 3 digit code
	- 0805 and above sized SMDs use 3 or 4 digit codes
	- First 2 digits - first two digits
	- 3rd digit - multiplier
	- Most SMDs are <1% 
	- NOTE: 100 = 10 ohms (3rd 0 means 0 zeroes)
4. SMD 4 digit 
	- First 3 digits - first 3 digits
	- 4th digit - 
5. Smaller SMDs
	- Uses combination of letter and digits
	- Check with manufacturer for details