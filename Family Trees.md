I've been wondering about what data structure a family tree would be best represented in, and how large it will be for a few generations. After a while of thinking, I think I've arrived at a general formula.

## Premise
These are the generations (except great-great-grandparents) up to which I'm interested in calculating. Most likely I won't be able to complete all the data, but at least I can try.

- Their Parents (Can add later if available) \[They would be in 1800s, assuming everyone lives to 100, and have kids at 30\] \[\Strangely, I figured out my dad was born when grandpa was 47\]
- Their Parents (Their siblings if available)
- Grandparents (And their siblings)
- Parents (And their siblings)
- Me

I will also be including cousins, their parents, and all of their parents, and so on.
## How I arrived at it
### Model 1: Starting from the top
At first, I tried starting from the parents of grandparents (and assumed an X for their siblings). I did not realize I was only considering one of my parents' grandparents, and I was thinking along my father's family side, since that's the only side I knew the name of a great-grandparent.

But this isn't an issue in principle, as we have to start somewhere, and apparently, anywhere would do just fine. We just have to model from there, and therefore choosing a right spot can come in handy. Ideally this model can find out all the children, siblings and ancestors from any individual.

So, I put 2 for the number of great-grandparents (or Gen 4, Gen 1 being my generation), and X for the number of siblings each of them had. So Gen 4 would have 2+2X members (2X because both of them had X siblings).

Next, I went down to their children, and I assumed they would have Y children.

**NOTE: X would be the number of children (siblings) in Gen 4, Y would be the same number of Gen 3, Z would be that for Gen 2 and N would be the number of siblings for Gen 1.**

So, the number of members in Gen 3 would be (oops, I realized my mistake, and I'll be adding corrections as I write here): (1 + 2X)Y (I first calculated it as 2+)
### Model 2: Starting at the bottom