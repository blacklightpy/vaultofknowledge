For example, Devanaagari packs more detail (as evident from comparing the Devanaagari script and its IAST transliteration), and the same is true for Bengali.

So, I checked and propose the following scaling for those scripts (to be implemented by font-size CSS property):

- Devanaagari: 145%
- Bengali: 150%

Now of course, this depends on the typeface. I chose this scaling based on the typeface used in my Obsidian theme, but my website seems to have a different typeface.

In Obsidian, I use the Calibri font. It seems to work right for scaling Devanaagari, but Bengali needs too large of a scaling there, while the website only needs 130% without bold, and 120% with bold. But I think it needs to be at least 135% without bold because it seems horizontally compressed.

## On Stack Exchange

The default font used in my GNU/Linux system was Liberation Sans. In it, Devanaagari needs H3 to match the transliteration, while Bengali needs only H4.

But in Roboto or Colibri, H3 and H2 worked the best. On Segoe UI, H2, H2 (applying H1 to Devanaagari is too much)

Roboto: H3, H2.
Colibri: H3, H2

Only on Liberation Sans does the font cross over the transliteration.

### General Understanding.

In Segoe UI, Indic Scripts are more condensed relative to Roboto and Colibri.
Roboto and Colibri are taken as the standard, and Indic Scripts are similar in them.
In Liberation Sans, Indic scripts are larger relative to Roboto and Colibri.

Generally, the ratio of sizes of Devanaagari and Bengali are the same (even though there is more variation in their sizes relative to Roman scripts), except in case of Segoe UI, where Devanaagari is a bit too condensed.



