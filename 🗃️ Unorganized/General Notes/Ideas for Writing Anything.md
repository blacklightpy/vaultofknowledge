
# Length
Keep an optimal length, to make the content portable to other media
while maintaining readability.

For example, flexbox is responsive, but poetry isn't responsive.

Also, line breaks may also make content that is otherwise portable unportable. For example, if the following content:

```
ADHFD DLHFABN LAFFDSNS SDFKHFDS DSFAHLDS. SDAFKL, FADS, AFDDFSAF ADFSDSDFS FSF FDS. AFDFDA DAFFSF FASFD FD AFS FSDF GER WVF. FASFA ASGB FSAF VAFD ASDFFS VADVAGVF BSDB.
```

> [!NOTE]
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

is beautified into:
```
ADHFD DLHFABN LAFFDSNS
SDFKHFDS DSFAHLDS.

SDAFKL, FADS, AFDDFSAF
ADFSDSDFS FSF FDS.

AFDFDA DAFFSF FASFD FD
AFS FSDF GER WVF.

FASFA ASGB FSAF VAFD ASDFFS
VADVAGVF BSDB.
```

NOTE:
My initial conception was wrong, because if you look at lines 5-8 here:

```
AFDFDA DAFFSF FASFD FD
AFS FSDF GER WVF.

FASFA ASGB FSAF VAFD ASDFFS
VADVAGVF BSDB.
```
 was invalid because line 5 is 22 characters long, and line 7 is 27 characters long.

If the maximum line length is 27 characters, AFS in line 6 should be a part of line 5, because with a space, adding AFS would only make make it 22+3+1 = 


may look like:

```
AAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAA

AAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAA

BBBBBBBBBBBBBBBBBBBBBB
BBBBBBBBBBBBBBBBBB

BBBBBBBBBBBBBBBBBBBBBB
BBBBBBBBBBBBBBBBBB
```

# Structure
Define ideals structures to break them into.

This depends on the format of communication itself.
For writing, this begins