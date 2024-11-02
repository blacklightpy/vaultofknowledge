Source: https://www.pcg-random.org/party-tricks.html
 
> ## k-dimensional Equidistribution
> 
> A common use case for a random number generator is to provide points in a _k_-dimensional space, for some _k_. Any good RNG ought to be _well distributed_ across _k_ dimensions (i.e., there should be no pattern to the _k_-tuples we see), but some users would prefer a much stronger property: that over the full period of the generator, _every possible_ _k_-tuple will occur, and they will all occur the same number of times. This property is known as _k_-dimensional equidistribution. Let's look at why this might be a desirable property.
> 
> There is a saying that if you had an infinite number of monkeys typing on an infinite number of typewriters, they would produce all the great works of literature (and an inconceivable amount of dreck, too). We can cast that scenario into the world of random number generation. Suppose we have a generator that outputs 32-bit values (i.e., four bytes), and we grab its output in chunks of 16384 values at once. Each chunk will thus be 64 KB in size. If we demand that the generator be 16384-dimensionally equidistributed, we can know that _all possible_ 64 KB sequences of data must show up eventually over the full period of the generator, which must be at least 216384×32 = 2524288. Within that immensely huge collection of outputs lies _every_ valid 64 KB zip file, some of which will contain great literature such as _Hamlet_. Thus, to make the saying more accurate, you don't need an infinite number of monkeys (_k_-tuples) to produce the works of Shakespeare—2524288 is ample.
> 
> An argument for _k_-dimensional equidistribution goes like this: Suppose you bought a lottery ticket every week—how would you feel if you discovered that the clerk at the store was handing you a fake ticket and pocketing the money because, at 259 million to one, you were never going to win anyway. You might, rightly, feel cheated. Thus as unlikely as any particular _k_-tuple might be, we ought to have _a real chance_, however remote, of producing it.
> 
> An argument against providing _k_-dimensional equidistribution (for large _k_) is that infinitesimal probabilities aren't worth worrying about. You probably aren't going to win the lottery, and your monkeys won't write Shakespeare.
> 
> But what if rather than blindly search for Shakespeare, we manufacture a generator that is just on the cusp of producing it. With the PCG family, that's possible!

