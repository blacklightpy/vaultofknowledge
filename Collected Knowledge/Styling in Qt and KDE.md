KDE is a desktop environment based on Qt

Qt apps usually get their style from the desktop environment, and this is handled well by large desktop environments like KDE Plasma and GNOME.

Other desktop environments or compositors will need to use Qt configuration tools called `qt5ct` and `qt6ct`, by passing them as an environment variable as follows:
`QT_QPA_PLATFORMTHEME=qt5ct`

Like any other UI library, Qt theming can also be split into widget styles, window decorations, colour schemes, icon themes, cursor themes and fonts.

Out of these, cursor themes and icon themes are fairly generalizable to other libraries too. But widget styles, decorations and colour schemes will be tied to the library.

Instead of using `qt5ct`, one can also use a theme engine named Kvantum.
## Using Kvantum

Install Kvantum for your distribution. It will act as a theme to Qt apps.

Set Kvantum as the default theme using the environment variable:
`QT_STYLE_OVERRIDE=Kvantum`

Then use Kvantum Manager to install your desired Kvantum theme.
# Applying themes in Flatpak

## Setting Style

Firstly, install the required KStyle: `flatpak install org.kde.KStyle.<Theme>
(I noticed that with Kvantum, I had to install all versions to fit all apps)

In Flatseal, set:
Environment Variable: `QT_STYLE_OVERRIDE=theme`

For Kvantum, add filesystem access to Kvantum install folder:
Filesystem Access: `xdg-config/Kvantum:ro`
## Setting qt5ct
Set environment variable: `QT_QPA_PLATFORMTHEME=qt5ct` (Haven't tried this though)