Diffie-Hellman key exchange is a method used to form a shared secret between two parties over a public network to use symmetric key encryption. Symmetric key encryption is preferred for live communications, because asymmetric key encryption is often very difficult.
# Theory
$a^b \: \text{mod} \: p = (a \: \text{mod} \: p)^b$
[Proof: Just use binomial expansion, assuming $a = np+m$, making $a \: \text{mod} \: p = m$]
# Algorithm math
$A = g^a \: \text{mod} \: p$
$B = g^b \: \text{mod} \: p$

$\text{Secret\_B} = (A^b) \: \text{mod} \: p$
$= (g^a \: \text{mod} \: p)^b \: \text{mod} \: p$
$= (g \: \text{mod} \: p)^{ab} \: \text{mod} \: p$

$\text{Secret\_A} = (B^a) \: \text{mod} \: p$
$= (g^b \: \text{mod} \: p)^a \: \text{mod} \: p$
$= (g \: \text{mod} \: p)^{ab} \: \text{mod} \: p$

$\text{Secret\_A} = \text{Secret\_B}$
This is called the Shared Secret.
# Algorithm
> [!NOTE]
> The group used in the Diffie-Hellman key exchange can either be $\Bbb Z^∗_p$ where $p$ is a prime number, a subgroup of $\Bbb Z^∗_p$ of order $q$ where $q$ is a prime number or an elliptic curve group, but in the following we use the group $\Bbb Z^∗_p$ for simplification.

- One party chooses a large prime number $p$ and a generator $g$ from the group $\Bbb Z^*_p$.
- They share these values over tamper-proof, but public network.
- Both parties generate unique secret numbers (practically between $1$ and $p-1$ because the $\text {mod}$ will do that anyways). One side can call their number a, and the other side theirs $b$.
- They generate intermediate values as $A = g^a \: \text{mod} \: p$ and $B = g^b \: \text{mod} \: p$ respectively.
- They share these values over tamper-proof, but public network.
- Both generate shared secrets as $K = B^a \: \text{mod} \: p = A^b \: \text{mod} \: p$.

> [!NOTE] How the security of the secret is guaranteed
>In short, the shared secret can be generated only by using $g$, $p$, $a$ and $b$, that is, $F(g,p,a,b)$. But a middleman only knows $g$, $p$, $f(g,p,a)$ and $f(g,p,b)$. They don't know $a$ or $b$, nor can they use $g$, $p$, $f(g,p,a)$ and $f(g,p,b)$ to generate $F(g,p,a,b)$. Also note that they can't use $f(g,p,a)$ to figure out $a$, because $p$ is a very large prime number used as modulus, so brute-forcing combinations is practically impossible.

>[!NOTE] Considerations
> The channel through which the messages are relayed should be tamper proof, as a man-in-the-middle could intercept the traffic and send their keys instead of the original keys to read the messages.
> 
> It is for this reason that both WhatsApp and Signal have an option to verify the shared key, if it's the same for both parties using the numbers or by QR codes. Simply sharing the numbers would be enough.
> 
> - There are other methods to prevent consistent eavesdropping, such as using a long-term shared secret (like KMAC) to verify the message.
> 	- Signal uses DH key exchange with "Double Ratchet Algorithm" for **encryption** and "Triple Extended Diffie Hellman (X3DH)" / "Post Quantum Extended Diffie Hellman (PQXDH)" for the **authentication**.
> 		- More details on X3DH: https://crypto.stackexchange.com/a/55433
> 	- Another group of methods used is called the Station To Station (STS) protocol.
> 		- More details on STS: https://crypto.stackexchange.com/questions/74601/station-to-station-protocol-questions
# Practice
- One party generates the two numbers $g$ and $p$.
- They also generate their secret number $a$, with which they generate their number $A$.
- Then they pass the numbers $g$, $p$ and $A$ to the other party.
- The other party generates a secret number $b$, with which they generate a number $B$.
- They also generate the shared secret by using the value $A$.
- Then they pass the number $B$ to the first party.
- The first party generates the same secret using the value $B$.

**How will this large number help with encryption?**
Encryption is done using large numbers in general, to get a result that can only be decrypted using the same number. If the number is large enough, brute-forcing it will become difficult.

Multiverse clusters full of computers as small as the Planck volume brute forcing the number should not be able to get it in a million years.