There are block ciphers (which encrypt by blocks) and stream ciphers (which encrypt bit-by-bit).

My Samsung (R) Galaxy M10 (SM-M105F / m10lte) used an MMC storage, and it used FDE with AES-XTS by default (It shows `aes-xts-disk` in its crypto footer).

There is a Stack Overflow question ([Question 49335046: Android 4.4 FDE (Scrypt Footer)][https://stackoverflow.com/question/49335046]), where a user took the 16 KB crypto footer from his encrypted `userdata` partition, from his Samsung Galaxy S4 Mini running Android 4.4.4.

He was learning about FDE, and though Android 4.4.4 does not have FDE (EDIT: I was wrong, see next paragraph), it has Scrypt. He also found that there is very less documentation on it, and he found that the 16 KB crypto footer started with the [[Magic Numbers (in Linux)|magic number]] `0xC5B1B5D0`.

Actually, my Galaxy M10 also has the same magic number, so I wonder if it is related, but it's more likely to have FDE. Oh, turns out Samsung introduced FDE in Android 4.4.4 as opt-in, and made it default from Android 7.0.