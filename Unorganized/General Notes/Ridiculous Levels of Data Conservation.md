# Example 1: List of names
- Assume each person has a name of 30 characters
- The alphabet has 55 characters with upper case, lower case, -, \' and spaces
- A minimal data structure for characters would have 6 bits, which can hold 64 separate numbers.
- 9 digits are wasted, but it has to be this way, considering we need separation of characters.
- **Aside:** We could also just skip the concept of characters to save data, but we'll come to that idea later.
- For 30 characters for each name, we are using 180 bits.
- For every 200 people who input their names, we will be using 36000 bits of data, or 4.5 KB.
- But, it's just 200 people, so why couldn't we save space on this?

#draft 
- So we store individual names in a db, and assign each of them to each person, saving a lot of data
- The names themselves are character strings, so they have to be stored separately, but can be done so using a separator character sequence at the end, so that the character