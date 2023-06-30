## 1. Soccer Mom - I just want to use Excel and watch YouTube, and use Facebook

Every Linux distribution targeting the average user comes with the Firefox browser. But it may have trouble playing certain video files because they use patented encoding.

To fix this, you need to install the appropriate codecs for playing those videos.

This can be achieved by installing the codecs system-wide, but for the home user, I'll recommend just installing a version of Firefox bundling the codecs from the Flathub store.

### Installing codecs for Firefox alone
The way to do this is to uninstall the version of Firefox you have by default, and install the Flatpak version from the Flathub store. If your operating system has flatpak enabled and Flathub added, you will 

#### Using



### Installing codecs system-wide
#### If you are using Ubuntu
##### Using Mouse

##### If you're okay with using the Terminal
1. Launch the terminal. Normally the Ctrl + Alt + T shortcut launches the terminal.
2. Enter the below three commands.
```
sudo add-apt-repository multiverse
sudo apt update
sudo apt install ubuntu-restricted-extras
```

> [!NOTE] What they do
> 1) Enable the "multiverse" repository, which is a collection of packages outside the official distribution, which contains our codecs amongst other stuff.
> 2) Update the package manager with the list of packages in "multiverse".
> 3) Install ubuntu-restricted-extras, which as the name implies, contains the codecs.

> [!NOTE]
> 1. `sudo` means "**s**uper**u**ser **do**". Superusers are users with privileges to modify the system. Using sudo verifies that you are in charge of the system and it asks for your password. 
> 2. `apt` refers to the system package manager, Advanced Packaging Tool (APT).

#### On OpenSUSE


## 2. Gamer - I want to play games on Steam

### 2.1. Inexperienced Gamer - I'm okay with games released for Linux

### 2.2. Casual Gamer - I'm want to games released for Windows, but are supported by Steam Play

### 2.3. I want to play any Windows games

## 3. Actual User - I want to install many other software like on Windows

## 4. Enthusiast - I want to understand everything about Linux

## 5. Eren Yeager - I want freedom and nothing less.