For example, Devanaagari packs more detail (as evident from comparing the Devanaagari script and its IAST transliteration), and the same is true for Bengali.

So, I checked and propose the following scaling for those scripts (to be implemented by font-size CSS property):

- Devanaagari: 145%
- Bengali: 150%

Now of course, this depends on the typeface. I chose this scaling based on the typeface used in my Obsidian theme, but my website seems to have a different typeface.

In Obsidian, I use the Calibri font. It seems to work right for scaling Devanaagari, but Bengali needs too large of a scaling there, while the website only needs 130% without bold, and 120% with bold. But I think it needs to be at least 135% without bold because it seems horizontally compressed.
## On Hinduism Stack Exchange

The default font used in my GNU/Linux system was Liberation Sans.
In it, Bengali needs only H4 to match the transliteration, while Devanaagari needs H3.

But in Roboto or Colibri, H3 and H2 worked the best.
On Segoe UI, H2 and H2 worked the best, as applying H1 to Devanaagari is too much.

When there are line wraps, Liberation Sans could use H3 and H2 instead.

So considering the average values, H3 for Bengali and H2 for Devanaagari seem to work best.
## General Understanding

In Segoe UI, Indic Scripts are more condensed relative to Roboto and Colibri.
Roboto and Colibri are taken as the standard, and Indic Scripts are similar in them.
In Liberation Sans, Indic scripts are larger relative to Roboto and Colibri.

Generally, the ratio of sizes of Devanaagari and Bengali are the same (even though there is more variation in their sizes relative to Roman scripts), except in case of Segoe UI, where Devanaagari is a bit too condensed.



