## 1. Soccer Mom - I just want to use Excel and watch YouTube, and use Facebook

> [!NOTE] Choosing an right operating system
> You should only be using Linux distributions that are friendly to the average user, such as:
> 
> 1. Fedora Workstation, a base distribution 
> 2. Ubuntu, a free enterprise distribution by Canonical, based off Debian
> 3. Zorin OS, a free user-friendly distribution based off Ubuntu
> 4. Linux Mint, another free user-friendly distribution based off Ubuntu
> 5. Fedora Silverblue: An immutable version of Fedora Workstation
> 6. Vanilla OS: A free immutable distribution based off Ubuntu
> 7. Endless OS: A free immutable distribution targeted towards students in developing countries
> 8. elementaryOS: A beautiful distribution targeted towards home users
> 
> > [!NOTE]
> > Immutable means operating systems that do not allow modifying the base filesystem in a normal scenario. This is good for newcomers who want to experience the system without having to know much anything about the internals of the operating system.
> 

> [!NOTE] Notes while installing it
> You are probably not going to install them yourselves, but for the person who is installing the operating system here are some things to know.
> 1. Most distributions will not package patented codecs and proprietary drivers by default, and some of them will ask you if you want to include them in your installation. You should choose yes, and if there wasn't such an option

> [!NOTE] How to Use it
> Every Linux distribution targeting the average user comes with the Firefox browser. But it may have trouble playing certain video files because they use patented encoding.
> 
> To fix this, you need to install the appropriate codecs for playing those videos.
> 
> This can be achieved by installing the codecs system-wide, but for the home user, I'll recommend just installing a version of Firefox bundling the codecs from the Flathub store.
> 
> ### Installing codecs for Firefox alone
> The way to do this is to uninstall the version of Firefox you have by default, and install the Flatpak version from the Flathub store. If your operating system has flatpak enabled and Flathub added, you should be able to install it from Flatpak
> 
> #### Using the software center
> On Ubuntu, this is the Ubuntu Software Center. On Fedora
> 
> 
> 
> ### Installing codecs system-wide
> #### If you are using Ubuntu
> ##### Using Mouse
> 1. Open Software and Updates from the applications launcher
> 2. Under the Ubuntu Software tab, check the box that says "Software restricted by copyright or legal issues (multiverse)". Don't uncheck the others.
> 
> ##### If you're okay with using the Terminal
> 1. Launch the terminal. Normally the Ctrl + Alt + T shortcut launches the terminal.
> 2. Enter the below three commands.
> ```
> sudo add-apt-repository multiverse
> sudo apt update
> sudo apt install ubuntu-restricted-extras
> ```
> 
> > [!NOTE] What the commands do
> > 1) Enable the "multiverse" repository, which is a collection of packages outside the official distribution, which contains our codecs amongst other stuff.
> > 2) Update the package manager with the list of packages in "multiverse".
> > 3) Install ubuntu-restricted-extras, which as the name implies, contains the codecs.
> 
> > [!NOTE] What the commands mean
> > 1. `sudo` means "**s**uper**u**ser **do**". Superusers are users with privileges to modify the system. Using sudo verifies that you are in charge of the system and it asks for your password. 
> > 2. `apt` refers to the system package manager, Advanced Packaging Tool (APT).
> 
> #### On OpenSUSE


## 2. Gamer - I want to play games on Steam

### 2.1. Inexperienced Gamer - I'm okay with games released for Linux

### 2.2. Casual Gamer - I'm want to games released for Windows, but are supported by Steam Play

### 2.3. I want to play any Windows games

## 3. Actual User - I want to install many other software like on Windows

## 4. Enthusiast - I want to understand everything about Linux

## 5. Eren Yeager - I want freedom and nothing less.