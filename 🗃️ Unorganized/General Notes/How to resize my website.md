# Purpose
To set my website visibility 
# Viewport values
### Mull Viewport:
| Viewport Size (w x h px) | DPR (reported by Mull) | Scaling |
| --- | --- | --- |
| 558x1045 px | 1 | 0.7 |
| 468x877 px | 1 | 0.85 |
| 432x809 px | 1 | 0.9 |
| 396x742 px | 1 | 1.0 |
### Chrome Viewport
I only had a result for 1.0 scaling.

- Viewport Size (w x h px): 393x736 px
- DPR:2.75
- Screen Size (w x h px): 393x873 px
# Viewport meta

```html
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="viewport" content="width=558, initial-scale=1"> <!-- Preferred -->
```

```css
/* Meta Viewport Parameter Samples */

-maximum-scale=1
-minimum-scale=1
-user-scalable=no
```

```css
/*********************************/
/* Font size scaling CSS Options */
/*********************************/

/* Apple Safari (WebKit Engine) */
-webkit-text-size-adjust: none;

/* Mozilla Firefox */
-moz-@viewport {
	width: device-width;
	initial-scale: 1;
}
```
