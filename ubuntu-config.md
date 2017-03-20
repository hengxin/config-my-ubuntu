# Configurations of My Ubuntu System

## Terminal

### [TMUX](https://tmux.github.io/)
- [`tmux_install.sh`](https://gist.github.com/P7h/91e14096374075f5316e)
- [A TMUX Crash Course](https://robots.thoughtbot.com/a-tmux-crash-course)

## [Fonts](https://wiki.ubuntu.com/Fonts)

### Fonts for Downloading
- [fonts@BaiduYun-hengxin]() % TBD

### [Install Fonts](http://askubuntu.com/a/191782/306000)
To install a font, just create `.fonts` folder in the home directory (if it does not exist) and
unpack/copy them there.

It's also a good idea to manually rebuild the font cache, so you can immediately use the fonts everywhere:

`fc-cache -f -v`

## Install Chinese Input Method

I installed [搜狗输入法 for Linux](http://pinyin.sogou.com/linux/?r=pinyin) as follows:

- Download [搜狗输入法 for Linux (.deb)](http://pinyin.sogou.com/linux/?r=pinyin) and install it by double-click.
- Configurate `im-config`:
  - Open `Input Method Configuration` (`im-config` for short) and press OK.
  - Choose `Yes` when be asked "Do you explicitly select the user configuration?"
  - Select `fcitx` in the next dialog and press OK.
- Restart your computer
- Execute `fcitx-config-gtk3` in Terminal.
  - Press `+` at the left bottom of the `Input Method` tab
  - Choose `Sogou Pinyin` and press OK.

> Note: Thanks to [hustDT/add-sogou-pinyin-in-Ubuntu-14.04](https://github.com/hengxin/config-my-ubuntu/blob/master/README.md).

## Install OneDrive
This is a [Free Client for OneDrive on Linux (skilion/onedrive@github)](https://github.com/skilion/onedrive). See also [onedrive@github.io](http://skilion.github.io/onedrive/).

### Dependencies
- [DMD](https://dlang.org/download.html): `curl -fsS https://dlang.org/install.sh | bash -s dmd`
- [libcurl](http://askubuntu.com/a/78185/306000): `apt-get install libcurl4-gnutls-dev`
- [SQLite 3](https://theplana.wordpress.com/2007/05/11/install-sqlite3-on-ubuntu/): `sudo apt-get install sqlite3 libsqlite3-dev` & `sudo gem install sqlite3-ruby`

### Installation
```
make
sudo make install
```

### Configuration

- Copy the default config file into home directory:
  ```
  mkdir -p ~/.config/onedrive
  cp /usr/local/etc/onedrive.conf ~/.config/onedrive/config`
  ```
- Create OneDrive sync. file (see `~/.config/onedrive/config`):
  ```
  mkdir ~/OneDrive 
  ```

### [Run](https://github.com/skilion/onedrive/issues/58)
`./onedrive`
It output: 
```
Authorize this app visiting:

https://login.live.com/oauth20_authorize.srf?client_id=000000004C15842F&scope=wl.offline_access%20onedrive.readwrite&response_type=code&redirect_uri=https://login.live.com/oauth20_desktop.srf

Enter the response uri: <CURSOR>
```
Visit the url above in browser, (log in onedrive), and enter the reponse uri at <CURSOR>.

### Sync Automatically
```
systemctl --user enable onedrive
systemctl --user start onedrive
```

## Install [BaiduYunpan for Linux Clients: houtianze/bypy](https://github.com/houtianze/bypy)

### Installation

([maybe first](http://stackoverflow.com/a/27425458/1833118) `sudo apt-get remove python-pip`)
```
sudo easy_install pip
sudo pip install requests
sudo pip install bypy
bypy.py
```

See dir `/apps/bypy`.

### Usage
- `(sudo) bypy.py help | list ; (from/to the current directory) syncup | upload | syncdown | downdir | compare`

## Install GIMP

- `sudo add-apt-repository ppa:otto-kesselgulasch/gimp`
- `sudo apt-get update`
- `sudo apt-get install gimp`

> Refer to [install-latest-gimp@askubuntu](http://askubuntu.com/a/134039/306000)

## Uninstall GNOME Documents

## Uninstall Document Viewer (Evince)

## Install Okular

- `sudo apt-get install okular`
- [Making Okular the default pdf viewer](http://askubuntu.com/questions/204823/how-do-you-change-the-default-document-viewer-to-okular) if you want:
  - Right click on a PDF > Properties > Open with (if not shown, see the link above) > Select an app > Set as default. 
- [Open pdf files in tabs](http://askubuntu.com/questions/482856/how-to-open-a-pdf-in-an-already-existing-instance-of-okular-independent-of-in)
  - Settings > Configure Okular > General > Program Features > Open new files in tabs
- [Tab switch]()
  `Ctrl + .` (next tab) and `Ctrl + ,` (previous tab)
- [Enable hyperlink in Okular](http://ubuntuforums.org/showthread.php?t=2096996)
  `Press Ctrl+1 to be in Browse mode`

## [Install Foxit](https://www.foxitsoftware.com/downloads/thanks.php?product=Foxit-Reader&platform=Linux-64-bit&version=1.1.0.0225&package_type=run&language=English)
- Download, `gzip -d`, `tar xvf`, `sudo ./<.run>`
- It is installed into `/home/hengxin/opt/foxitsoftware/foxitreader`

## Install Zotero
- Download [Zotero: a reference management tool](https://www.zotero.org/).
- Unzip it and run `./run-zotero.sh`

## Install [VirtualBox](https://help.ubuntu.com/community/VirtualBox/Installation)
- `sudo apt-get install ???` (forget it)
- Install `Win10` and `Office2016` on VirtualBox
- [To solve the resolution problem in VirtualBox](http://askubuntu.com/a/451825/306000):
  - Download and install the `VirtualBox Guest Additions` from menu `Devices | Insert Guest Additions CD Image...`
- [Copy And Paste Between VirtualBox Host And Guest Machines](http://www.liberiangeek.net/2013/09/copy-paste-virtualbox-host-guest-machines/)
  - `Settings => Advanced => Shared Clipboard & Drag’n’Drop (Bidirectional)`

## Install qBittorrent
Not documented yet.

## Install VncViewer
- `sudo apt install vncview`
- `vncview <ip>:<port>`

## System Monitoring Tools

### Install [SmokePing](http://oss.oetiker.ch/smokeping/index.en.html)

SmokePing keeps track of your network latency.

- `sudo apt-get install smokeping` to install.
