Polkit (formerly PolicyKit) is the service that handles graphical user authentication. Polkit uses the Linux kernel module "[[Pluggable Authentication Module|PAM]]" to verify user credentials.

> [!NOTE]
> Polkit replaces `gksudo` as the de-facto GUI elevation handler

A Polkit agent provides an interface to handle the input of credentials.

The executable `pkexec` provides the frontend for Polkit. It performs the function of calling the Polkit agent, verifying the credentials with PAM and authenticating the user via the Polkit daemon. If there is no registered Polkit agent, it uses its own textual authentication agent.

Common Polkit agents available are:
- `polkit-gnome` (GNOME Polkit Integration)
- `polkit-kde-agent` (KDE Polkit Agent)
- `polkit-qt5-agent` (Qt5 Polkit Agent)
- `mate-polkit` (MATE Polkit Integration)
- `xfce-polkit` (Xfce Polkit Agent)
- `pantheon-agent-polkit` (Pantheon Polkit Agent)
- `lxsession` (LXDE X11 Session Handler, which provides `lxpolkit`)
- `lxqt-policykit` (LXQt Polkit Agent)

The default agent is set in the configuration file `/etc/pam.d/polkit-1`
