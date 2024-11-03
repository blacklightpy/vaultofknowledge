
# Length
Keep an optimal length, to make the content portable to other media
while maintaining readability.

## Line Wrapping

I call this section line wrapping, because I realized that's what best describes this idea.

For example, flexbox is responsive, but poetry isn't responsive.

Also, line breaks may also make content that is otherwise portable unportable. For example, if the following content:

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

But if text A was used, it would look like:
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

# Structure
Define ideals structures to break them into.

This depends on the format of communication itself.
For writing, this begins