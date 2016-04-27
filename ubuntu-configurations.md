# Configurations of My Ubuntu System

## Terminal

### [TMUX](https://tmux.github.io/)
- [tmux_install.sh](https://gist.github.com/P7h/91e14096374075f5316e)
- [A TMUX Crash Course](https://robots.thoughtbot.com/a-tmux-crash-course)

## Install Developer Tools
### Install Git
- [Upgrade Git](http://askubuntu.com/a/579591/306000)
  - `sudo apt-get remove git => sudo add-apt-repository ppa:git-core/ppa =>  sudo apt-get update =>   sudo apt-get install git  =>  git --version`

### Install [Gradle](http://gradle.org/)
- [Upgrading Gradle to the latest version on Ubuntu](http://wtanaka.com/node/8079)
```
sudo add-apt-repository ppa:cwchien/gradle
sudo apt-get update

sudo apt-get install gradle-2.13 % for specific version
sudo apt-get install gradle-ppa % for the latest version
```

### Install JDK

### Install Eclipse

### Install [Umbrello](https://umbrello.kde.org/installation.php)
- Install [umbrello](https://umbrello.kde.org/) which is a UML Modeller. 

  `sudo apt-get install umbrello`
- Start umbrello.

  In my system, umbrello is installed into `usr/bin/umberllo`. Therefore, I can run umbrello simply by typing: 
  `umbrello`.

## Install LaTeX and Related Softwares

### Install LaTeX

Thanks to [scottkosty/install-tl-ubuntu](https://github.com/scottkosty/install-tl-ubuntu), we can now install the latest version of TeX Live (currently **Tex Live 2015**) by simply running a script:

- Clone [scottkosty/install-tl-ubuntu](https://github.com/scottkosty/install-tl-ubuntu).
`git clone https://github.com/scottkosty/install-tl-ubuntu.git install-tl-ubuntu`

- Running the script. 
`sudo ./install-tl-ubuntu`

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

## Install Vim

I installed GVim.

## Install 金山快盘

***Warning:*** It does not work for me. I will try to fix it and update status.
- Download [快盘 Linux 版 (.deb)](http://www.kuaipan.cn/d/linux);
- Double-click to install it.

## Install GIMP

- `sudo add-apt-repository ppa:otto-kesselgulasch/gimp`
- `sudo apt-get update`
- `sudo apt-get install gimp`

> Refer to [install-latest-gimp@askubuntu](http://askubuntu.com/a/134039/306000)

## Install Okular

- `sudo apt-get install okular`
- [Making Okular the default pdf viewer](http://askubuntu.com/questions/204823/how-do-you-change-the-default-document-viewer-to-okular) if you want:
  - Right click on a PDF > Properties > Open with (if not shown, see the link above) > Select an app > Set as default. 
- [Open pdf files in tabs](http://askubuntu.com/questions/482856/how-to-open-a-pdf-in-an-already-existing-instance-of-okular-independent-of-in)
  - Settings > Configure Okular > General > Program Features > Open new files in tabs
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
