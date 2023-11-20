- **Security** is about protecting **access** to your **belongings**.
- **Privacy** is about ensuring your **private data** remains **private**.
- **Anonymity** is about ensuring your **identity** remains **private**.

You can have "privacy and anonymity", "privacy without anonymity" or "anonymity without privacy", but all of them rely on security.
# More features
- **Plausible Deniability**: It is ensuring that one cannot argue that the real message can be extracted from an encrypted message, **even with access to the keys which can decrypt the message**.
	- This is achieved by creating an encrypted message comprised of two messages, a real message encrypted by a secret key and the other, a fake message encrypted by a fake message key. When a person who is supposed to have the key is asked to decrypt the message, they can use the fake key to decrypt the message, and reveal the fake message.
	- Since the questioner is unable to prove that the suspect has more than one key for the same message, he cannot trust that any message the suspect reveals is the true message.
	- ⚠️ If a suspect and his lawyer does not know about deniable encryption, a treacherous interlocutor could embed a fake message into the conversation, then decrypt it and frame the innocent suspect as guilty of something illegal.
	- Doubt: Can't the questioner re-encrypt the message? (This will work, unless cryptographic schemes can have multiple outputs for the same message. I'm not sure a single key can convert any of the multiple outputs back into the same message, but it may be possible)