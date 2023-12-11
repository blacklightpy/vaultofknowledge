PolicyKit, or Polkit is the service that handles graphical user authentication. Polkit uses [[Pluggable Authentication Module|PAM]] to verify user credentials.

> [!NOTE]
> PolicyKit replaces `gksudo` as the default GUI elevation handler

A Polkit agent provides an interface to handle the input of credentials.

The executable `pkexec` provides the frontend for PolicyKit. It performs the function of calling the Polkit agent, verifying the credentials with PAM and authenticating the user via the Polkit daemon. If there is no registered Polkit agent, it uses its own textual authentication agent.

Common Polkit agents available are:
- `polkit-gnome` (GNOME PolicyKit Integration)
- `polkit-kde-agent` (KDE PolicyKit Agent)
- `polkit-qt5-agent` (Qt5 PolicyKit Agent)
- `mate-polkit` (MATE PolicyKit Integration)
- `xfce-polkit` (Xfce PolicyKit Agent)
- `pantheon-agent-polkit` (Pantheon PolicyKit Agent)
- `lxsession` (LXDE X11 Session Handler)
- `lxqt-policykit` (LXQt PolicyKit Agent)

The default agent is set in the configuration file `/etc/pam.d/polkit-1`
