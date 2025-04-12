For example, Devanaagari packs more detail (as evident from comparing the Devanaagari script and its IAST transliteration), and the same is true for Bengali.

So, I checked and propose the following scaling for those scripts (to be implemented by font-size CSS property):

- Devanaagari: 145%
- Bengali: 150%

Now of course, this depends on the typeface. I chose this scaling based on the typeface used in my Obsidian theme, but my website seems to have a different typeface.

In Obsidian, I use the Calibri font. It seems to work right for scaling Devanaagari, but Bengali needs too large of a scaling there, while the website only needs 130% without bold, and 120% with bold. But I think it needs to be at least 135% without bold because it seems horizontally compressed.

## On Stack Exchange.

Devanaagari needs H3 to match the transliteration, while Bengali needs only H4. The font it uses is Liberation Sans.

But in the default font, I needed H2 and H3. Same for Roboto and Calibri. I guess even Liberation Sans is okay with that, just that the text appears slightly larger if there's no line wrapping.

Oh I see. Even in Roboto, H3 and H4 work best without line-wrapping. Interesting.

