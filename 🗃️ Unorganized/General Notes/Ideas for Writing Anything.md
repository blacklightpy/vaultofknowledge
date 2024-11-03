
# Length
Keep an optimal length, to make the content portable to other media
while maintaining readability.

## Line Wrapping
I call this section line wrapping, because I realized that's what best describes this idea.

For example, flexbox is responsive, but poetry isn't responsive.

Also, line breaks may also make content that is otherwise portable unportable. For example, if the following content:
### Example 1

[Text Block 1.1]
```
ADHFD DLHFABN LAFFDSNS SDFKHFDS DSFAHLDS. SDAFKL, FADS, AFDDFSAF ADFSDSDFS FSF FDS. AFDFDA DAFFSF FASFD FD AFS FSDF GER WVF. FASFA ASGB FSAF VAFD ASDFFS VADVAGVF BSDB.
```

> [!NOTE] Derivation of this string
> I derived it from the monospace text pattern:
> 
> ```
> AAAAAAAAAAAAAAAAAAAAAA
> AAAAAAAAAAAAAAAAAA.
> 
> AAAAAAAAAAAAAAAAAAAAAA
> AAAAAAAAAAAAAAAAAA.
> 
> BBBBBBBBBBBBBBBBBBBBBB
> BBBBBBBBBBBBBBBBBB.
> 
> BBBBBBBBBBBBBBBBBBBBBB
> BBBBBBBBBBBBBBBBBB.
> ```
> 
> and then by condensing it into a single line:
> 
> ```
> AAAAAAAAAAAAAAAAAAAAAA AAAAAAAAAAAAAAAAAA. AAAAAAAAAAAAAAAAAAAAAA AAAAAAAAAAAAAAAAAA. BBBBBBBBBBBBBBBBBBBBBB BBBBBBBBBBBBBBBBBB. BBBBBBBBBBBBBBBBBBBBBB BBBBBBBBBBBBBBBBBB.
> ```

is beautified into this following format with a maximum line length of 22 characters:

[Text Block 1.2]
```
ADHFD DLHFABN LAFFDSNS
SDFKHFDS DSFAHLDS.

SDAFKL, FADS, AFDDFSAF
ADFSDSDFS FSF FDS.

AFDFDA DAFFSF FASFD FD
AFS FSDF GER WVF.

FASFA ASGB FSAF VAFD
ASDFFS VADVAGVF BSDB.
```

> [!TIP] Side Note: Valid Line Wraps
> My initial conception was a wrong example for line-wrapping, which happened as a consequence of it being manually generated without looking at the line lengths carefully.
> 
> In it, the lines 5-8 looked like this:
> ```
> AFDFDA DAFFSF FASFD FD
> AFS FSDF GER WVF.
> 
> FASFA ASGB FSAF VAFD ASDFFS
> VADVAGVF BSDB.
> ```
> This was invalid because line 5 is 22 characters long, and line 7 is 27 characters long.
> 
> If the maximum line length is 27 characters, AFS in line 6 should be a part of line 5, because with a space, adding AFS would only make make it 22+3+1 = 26 characters long.
> 
> If the maximum line length is 22 characters, ASDFFS in line 7 would be a part of line 8.
> 
> Luckily there is no minimum line length, or else these ideas could never be represented without changing the words in which they were written.

on another media with a different maximum line length, it may look differently. For example, the following text would be from a media with a maximum line length of 13 characters:

[Text Block 1.3]
```
ADHFD DLHFABN
LAFFDSNS
SDFKHFDS
DSFAHLDS.

SDAFKL, FADS,
AFDDFSAF
ADFSDSDFS FSF
FDS.

AFDFDA DAFFSF
FASFD FD
AFS FSDF GER
WVF.

FASFA ASGB
FSAF VAFD
ASDFFS
VADVAGVF
BSDB.
```

All other group of two lines got broken up into 4 lines, while lines 7-8 broke up into 5 lines, and this looks less readable.

But if text the un-beautified initial text was used, it would look differently. The following example doesn't convey the point well, but here it is:

[Text Block 1.4]
```
ADHFD DLHFABN
LAFFDSNS
SDFKHFDS
DSFAHLDS.
SDAFKL, FADS,
AFDDFSAF
ADFSDSDFS FSF
FDS. AFDFDA
DAFFSF FASFD
FD AFS FSDF
GER WVF.
FASFA ASGB
FSAF VAFD
ASDFFS
VADVAGVF
BSDB.
```
Not too different here, with only a few differences in the lines.

I'll switch to another example, say with a line wrap length of 60 characters, and then wrapping it to 40
### Example 2

Consider the following text.

[Text Block 2.1]
```
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
```

I can beautify it by wrapping it to an 80 character limit like so, while also breaking it down by sentences:

[Text Block 2.2]
```
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
do eiusmod tempor incididunt ut labore et dolore magna
aliqua.

Ut enim ad minim veniam, quis nostrud exercitation ullamco
laboris nisi ut aliquip ex ea commodo consequat.

Duis aute irure dolor in reprehenderit in voluptate velit
esse cillum dolore eu fugiat nulla pariatur.

Excepteur sintoccaecat cupidatat non proident, sunt in culpa
qui officia deserunt mollit anim id est laborum.
```

Looks neat. But watch what happens when you preview this on a screen with a maximum line length of 40 characters:

[Text Block 2.3]
```
Lorem ipsum dolor sit amet, consectetur
adipiscing elit, sed
do eiusmod tempor incididunt ut labore
et dolore magna
aliqua.

Ut enim ad minim veniam, quis nostrud
exercitation ullamco
laboris nisi ut aliquip ex ea commodo
consequat.

Duis aute irure dolor in reprehenderit
in voluptate velit
esse cillum dolore eu fugiat nulla
pariatur.

Excepteur sintoccaecat cupidatat non
proident, sunt in culpa
qui officia deserunt mollit anim id est
laborum.
```

But the original text ([Text Block 2.1]) would've looked like this of such a medium:

[Text Block 2.4]
```
Lorem ipsum dolor sit amet, consectetur
adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna
aliqua. Ut enim ad minim veniam, quis
nostrud exercitation ullamco laboris 
nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit
in voluptate velit esse cillum dolore eu
fugiat nulla pariatur. Excepteur sint
occaecat cupidatat non proident, sunt in
culpa qui officia deserunt mollit anim
id est laborum.
```

This seems more meaningful.

Let's try looking at how the first text block and last output text block would've looked like if it was broken up into sentences first (like the second text block).
### Example 3

Here's the first text block of the previous section ([Text Block 2.1]) broken up into sentences:

[Text Block 3.1]
```
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
```

Here's the render with a maximum line length of 40 characters:

[Text Block 3.2]
```
Lorem ipsum dolor sit amet, consectetur
adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna
aliqua.

Ut enim ad minim veniam, quis nostrud
exercitation ullamco laboris nisi ut
aliquip ex ea commodo consequat.

Duis aute irure dolor in reprehenderit
in voluptate velit esse cillum dolore eu
fugiat nulla pariatur.

Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia
deserunt mollit anim id est laborum.
```

Much more readable and meaningful than [Text Block 2.4].
### Takeaway
The takeaway is that text that cares about line lengths should also care about the mediums through which they may be represented.

Text block 3.2 is better than 2.4. But both are better than the messy text block 2.3.

2.4 at least looks like a linear text written on a short piece of paper. 2.3 looks like a meaninglessly broken up sequence of text.

Text blocks in example 1, due to their artificial and hasty construction and choice of small maximum line length do not look good in either of the blocks 1.3 or 1.4. This shows us how there out to be a minimum value for the maximum line length, and 
# Structure
Define ideals structures to break them into.

This depends on the format of communication itself.
For writing, this begins