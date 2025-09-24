There are block ciphers (which encrypt by blocks) and stream ciphers (which encrypt bit-by-bit).

## About my Samsung Galaxy M10

My Samsung (R) Galaxy M10 (SM-M105F / m10lte) used an eMMC 5.1 storage (but it appeared as if it was using MMC from the block device naming conventions, but it's Samsung, so they just do their thing), and it used FDE with AES-XTS by default (It shows `aes-xts-disk` in its crypto footer). Samsung Knox documentation says that all FDE-based devices are encrypted with AES-256-XTS or AES-256-CBC.

There is a Stack Overflow question ([Question 49335046: Android 4.4 FDE (Scrypt Footer)][https://stackoverflow.com/question/49335046]), where a user took the 16 KB crypto footer from his encrypted `userdata` partition, from his Samsung Galaxy S4 Mini running Android 4.4.4.

He was learning about FDE, and though Android 4.4.4 does not have FDE (EDIT: I was wrong, see next paragraph), it has Scrypt. He also found that there is very less documentation on it, and he found that the 16 KB crypto footer started with the [[Magic Numbers (in Linux)|magic number]] `0xC5B1B5D0`.

Actually, my Galaxy M10 also has the same magic number, so I wonder if it is related, but it's more likely to have FDE. Oh, turns out Samsung introduced FDE in Android 4.4.4 as opt-in, and made it default from Android 7.0.

## More details (from Knox docs)

At first bootup, a randomly generated encryption key, or Primary Key, is generated and encrypted in storage by the TEE Keymaster component.

The Keymaster uses a default password and a device-unique hardware based key to protect the key from any offline attacks.

If the user sets up a PIN, password or pattern on the device, and configures Secure Startup via Settings > Biometrics and Security, the Primary Key is re-encrypted by the  Keymaster using the user's credentials and stored.

If Secure Startup is not configured, it is re-encrypted by the default password instead of the user's credentials.

The primary key is then recovered using the default password or the user's credentials, depending on whether Secure Startup was configured or not.

**So, if I only set the PIN, and didn't enable Secure Startup, I should be able to get the partition to decrypt with the TEE Keymaster alone, if I just flash it. But if I did enable Secure Startup, I may need to point out that I used a PIN, and I may need to flash the EFS partition too for that.**

**Now, of course, I wonder if PIN was protected by some password? Whatever, I can let go of the data, as I got the important bit out luckily when MTP worked - I just want to learn.**


