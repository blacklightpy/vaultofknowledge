# Purpose
To set change website readability for the better.
# How I will do it
Copy the template file into `_assets` folder.

Replace all the viewport width with the value 500, so that it will be the minimum value.

The viewport will scale up for larger resolutions, as I've heard, which is what I want.

As I've observed, which is in line with the script, if the width is less than 1000 px, the left pane will close.

If the width is less than 800 px, the right pane will close too.

If the width is less than 450 px, the pane arrows won't show. This is from the template CSS files.
# Viewport values
### Mull Viewport:
| Viewport Size (w x h px) | Viewport Outer Size (w x h px - reported by Firefox) | DPR (reported by Mull) | DPR (reported by Firefox) | Scaling |
| ---- | ---- | ---- | ---- | ---- |
| 558x1045 px | 558x772 | 1 | 2.5 | 0.7 |
| 468x877 px |  | 1 | 2.5 | 0.85 |
| 432x809 px |  | 1 | 2.5 | 0.9 |
| 396x742 px |  | 1 | 2.5 | 1.0 |
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
