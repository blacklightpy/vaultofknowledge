I was thinking about telling my friend that a game requires 10 billion bytes!!. Then I thought, I'll find the number of binary digits, and tell him that the game requires 80 billion binary digits!!. Then I thought, I'd just tell him that the game requires so and so number of decimal digits, and with $\log2^\text{80 billion}$, that would have around 24 billion digits.

Then, I wanted to explain that in words, and after a bit of thinking, I figured out that the number is $10^{2.4*10^{10}}$, which is a simple form of writing $10^\text{2 billion}$, and you know it lies between $10^{{10}^{10}}$ and $10^{{10}^{11}}$ for me to look it up on the googology wiki.

But then I wondered, $k^{ab}$ = $(k^a)^b$  = $(k^b)^a$ = $k^{ba}$.

So $10^{2.4*10^{10}}$ can be $(10^{2.4})^{10^{10}}$ or $(10^{10^{10}})^{2.4}$.

Now we know that the result is 1 followed by 24 billion 0s. However, it becomes difficult to believe that $10^{2.4}$, an irrational number (251.19), when raised to a billion times will form a perfect number like 1 followed by 24 billion 0s.

A simpler version would be $10^{24}$, which would be $(10^{2.4})^{10}$ or $(10^{10})^{2.4}$. It's hard to imagine that when 251.19 when multiplied by itself 10 times would lead to 1 followed by 24 zeroes. Now I didn't perform this manually, and used an automatic reasoning model to $1.00005*10^{24}$, which is very close to the actual number!

So I wanted to try this out with a simpler number to see the steps myself (although I could've maybe used Python to see a long form calculation). In my naivety, thinking that since $100$ is twice the power of $10$, I thought that $10^{24}$ would be $100^{2.4}$ (i.e. thinking $10^{2.4*10}$ = $100^{2.4}$, because it is $(10^{10})^{2.4}$) and decided to compute it. But that came out to be $10^{4.8}$, because unlike my wrong assumtion, 

Now the math works, but with a loss of precision. This made me wonder, should 