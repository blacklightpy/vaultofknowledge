Firefox Viewport:

558x1045 DPR:1 (0.7)
468x877 (0.85)
432x809 (0.9)
396x742 (1.0)

Chrome Viewport:

393x736 px DPR:2.75
Screen Size: 393x873 px
# Viewport meta

- `<meta name="viewport" content="width=device-width, initial-scale=1">`
- `<meta name="viewport" content="width=558, initial-scale=1">` => Preferred solution
## Meta Viewport Parameter Samples
- maximum-scale=1
- minimum-scale=1
- user-scalable=no


### CSS Options
-webkit-text-size-adjust: none;

-moz-@viewport {
	width: device-width;
	initial-scale: 1;
}