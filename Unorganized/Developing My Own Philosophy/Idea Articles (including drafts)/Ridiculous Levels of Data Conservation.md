My takeaway from writing this article is that data conservation, or conservation of anything really is about being a minimalist or fundamentalist. That's stating the obvious, but fundamentalism can be taken to extreme levels, as in the case of religions for a societal example, and is also very common in engineering, particularly computer science, to allow systems to be more efficient. 

But when it comes to casual life, which is what religion deals with, fundamentalism can be very ridiculous, and hence this article.

As for connections to the idea of conserving resources in society, that will be separately discussed under my "Socio-Economic Discourse" category, and I've made a draft note on [[Sharing Resources]].
# Example 1: Storing a List of names
> [!note] Note
> **Prerequisite knowledge (what [[Binary Numbers|binary digits]] are):**
> - For the uninitiated in number systems, the binary number system is the most fundamental number system, where there are only 2 "face values" (if you remember elementary school)
> - Our decimal system has 10 "face values", since we used to count with 10 fingers
> - We call the number of face values the "base" of a number system
> - So decimal is a "base 10" system, and binary is a "base 2" system
> - Given a number of digital, say 3 digits, our decimal system can represent 1000 values (10^3)
> - Similarly, given 3 digits, the binary system can represent 8 values (2^3)
> - More generally, the number of values for a number of digits is given by: base^(number of digits)
> - And finally, we call digits in the binary system **bi**nary digi**ts**, or "**bits**".

- Assume each person has a name of 30 characters
- The alphabet has 55 characters with upper case, lower case, -, \' and spaces
- A minimal data structure for characters would have 6 bits, which can hold 64 separate numbers.
- 9 digits are wasted, but it has to be this way, considering we need separation of characters.
- **Aside:** We could also just skip the concept of characters to save data, but we'll come to that idea later.
- For 30 characters for each name, we are using 180 bits.
- For every 200 people who input their names, we will be using 36000 bits of data, or 4.5 KB.
- But, it's just 200 people, so why couldn't we save space on this?

- So we store individual names in a DB (database), and assign each of them to each person, saving a lot of data
- The names themselves are character strings, so they have to be stored separately
- But we can use a separator character at the end, so that the string doesn't waste empty characters
- But this approach isn't computationally any better, and is rather worse, unless the DB storing user names is more constrained than the DB storing the list of names
- That is a very weird, but possible use case though

- For normal cases, we could just make use of the separator character in the input itself

- As for storing name DB separately, we could also save space by ignoring other possible names.
- We have the character glyphs in the device, but we need to encode them to use them.
- We could use an encoding scheme that only uses the characters that appear in the name DB.
- We still haven't avoided the problem of having to use more bits than the possible names.

- This problem arises fundamentally from the nature of languages, where words are made of graphemes.
- Perhaps we could map
- The computer scientist, or mathematical way of modelling this would be to do away with names and use binary numbers to identify users.
- This is already done by using a unique key.

- Any other data would be more relevant than using names, and everything would be numeric IDs.
- Sounds would be seen as bloated encoders of data, unless it is just background noise.
- Noise would be a fundamental, unavoidable quality of the universe.
- Any data represented in sound however, would be a waste of space.
- That is, unless sounds serve a purpose, in some psychological manner, due to the connection between ears and brains, perhaps even in a response to previously stored memories in the brain.
- However, that has to be very fundamental, and not something that can be achieved in a smaller quantity of sound.
- For example, music can touch one's emotions.
- It can be argued that simple tones can influence emotions too.

- At this point, this has turned into some sort of fundamentalism.

- [[Is audio fundamentally comprised of frequencies]] (moved to a separate page)
- [[Is every disturbance fundamentally a combination of harmonics]] (moved to a separate page)