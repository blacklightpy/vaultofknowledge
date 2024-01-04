# Purpose
To set change website readability for the better.
# How I will do it
Copy the template file into `_assets` folder.

Replace all the viewport width with the value 720, so that it will be the minimum value.

The viewport will scale up for larger resolutions, as I've heard, which is what I want.

As I've observed, which is in line with the script, if the width is less than 1000 px, the left pane will close.

If the width is less than 800 px, the right pane will close too.

If the width is less than 450 px, the pane arrows won't show. This is from the template CSS files.

If the width is less than 602 px, the title won't show.

The right pane will be at the rightmost side of the viewport.

So if I want content-only scaling, or universal font scaling, I need to do some CSS.

Keeping it simple, we do not need `minimum-scaling` or `height`. We need `width=device-width`.

By default `initial-scaling` is set to 1, and `maximum-scaling` is set to 10. This is okay.

`user-scalability` is set to yes, and anything else would violate Web Content Accessibility Guidelines (WCAG).
# Viewport values
### Mull Viewport:
| Viewport Size (w x h px) | Viewport Outer Size (w x h px - reported by Firefox) | DPR (reported by Mull) | DPR (reported by Firefox) | Scaling |
| ---- | ---- | ---- | ---- | ---- |
| 558x1045 px | 558x772 px | 1 | 2.5 | 0.7 |
| 468x877 px | 468x1040 px | 1 | 2.5 | 0.85 |
| 432x809 px | 432x960 px | 1 | 2.5 | 0.9 |
| 396x742 px | 396x880 px | 1 | 2.5 | 1.0 |
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

# Sizing title and headers

I need to keep the content big, but headers small

```css
/* Reduce font-size here */

/* id page_holder class flex_col
	 id header class header
		 id header_flex class flex_row
			 id homelink
*/
#homelink {
  margin-left: 1.5rem;
  margin-right: 1.7rem;
  font-size: 12pt;

/* id page_holder class flex_col
	 id header class header (this is what we modify to modify navbar font sizes)
		 id header_flex class flex_row
			 id navbar, class navbar (at below 602 px, it has to be toggled active)
					
				 id menu_toggle_button class navbar-button onclick toggle_menu() (< 602 px)
					
				 navbar-link (this is what is relevant to us)
				 icon-tray
				 div style "display: flex; flex-direction:column" (used under 450 px)
					 id left_pane_toggle_nav class left_pane_toggle_nav
					 id right_pane_toggle_nav class right_pane_toggle_nav
*/
.header {
  font-size: 12pt; /* default set in template_document.html*/
}

/* IDEA: Try using the max width thing to dynamically adjust font size
   Perhaps for a max-width of 300 px?
   Can I do it as a function of width too?
*/

}
```