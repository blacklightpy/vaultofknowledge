I was thinking about telling my friend that a game requires 10 billion bytes!!. Then I thought, I'll find the number of binary digits, and tell him that the game requires 80 billion binary digits!!. Then I thought, I'd just tell him that the game requires so and so number of decimal digits, and with $\log2^\text{80 billion}$, that would have around 24 billion digits.

Then, I wanted to explain that in words, and after a bit of thinking, I figured out that the number is $10^{2.4*10^{10}}$, which is a simple form of writing $10^\text{2 billion}$, and you know it lies between $10^{{10}^{10}}$ and $10^{{10}^{11}}$ for me to look it up on the googology wiki.

But then I wondered, $k^{ab}$ = $(k^a)^b$  = $(k^b)^a$ = $k^{ba}$.

So $10^{2.4*10^{10}}$ can be $(10^{2.4})^{10^{10}}$ or $(10^{10^{10}})^{2.4}$.

Now we know that the result is 1 followed by 24 billion 0s. However, it becomes difficult to believe that $10^{2.4}$, an irrational number (251.19), when raised to a billion times will form a perfect number like 1 followed by 24 billion 0s.

A simpler version would be $10^{24}$, which would be $(10^{2.4})^{10}$ or $(10^{10})^{2.4}$. It's hard to imagine that when 251.19 when multiplied by itself 10 times would lead to 1 followed by 24 zeroes. Now I didn't perform this manually, and used an automatic reasoning model to $1.00005*10^{24}$, which is very close to the actual number!

[
**Another example:**
So I wanted to try this out with a simpler number to see the steps myself (although I could've maybe used Python to see a long form calculation). In my naivety, thinking that since $100$ is twice the power of $10$, I thought that $10^{24}$ would be $100^{2.4}$ (i.e. thinking $10^{2.4*10}$ = $100^{2.4}$, because it is $(10^{10})^{2.4}$) and decided to compute it. But that came out to be $10^{4.8}$, because unlike my wrong assumption, $100^{2.4}$ was $(10^2)^{2.4}$, not $(10^{10})^{2.4}$. The result was thus $10^4 * 10^{0.8}$, which was $10000 * 6.30957 \approx 63095.7$. So this only happens for numbers at the scale of ten billion and above, since that's when you get $10^{10}$.
]

Now the math works, but with a loss of precision. This made me wonder, should these kinds of calculations even be valid? [This is in relation to my studies about making mathematics purely discrete, like 1) how I wrote on my local notes about how circles do not exist, and hence neither does pi, and the appearance of a circle only occurs to us because we are not zooming in enough to render the minor lines at the surface of a circle, all of which should have a length, and also 2) how I tried to come up with a number system that removes 0 from the number system, effectively not seeing it as a number, and hence solves the paradox of division by 0, since such a division won't be logical - but that turned out to have already been a thing called the bijective base-10 number system, and had been the number system used in Japan and Korea.]
