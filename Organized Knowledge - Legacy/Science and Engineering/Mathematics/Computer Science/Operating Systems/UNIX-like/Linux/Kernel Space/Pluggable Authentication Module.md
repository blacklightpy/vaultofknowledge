Pluggable Authentication Module (PAM) is a library for Linux which allow different session managers to authenticate users easily.

PAM provides an alternative to calling files like `/etc/passwd` by giving a high-level API that takes care of all the common functions required for a desktop.

It also takes care of managing keyrings or wallets.

The `pam_unix` module handles areas such as referring to `/etc/passwd` and `/etc/shadow` to verify credentials.
