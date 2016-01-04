## Install Latex and Related Softwares

### Install Latex

Thanks to [scottkosty/install-tl-ubuntu](https://github.com/scottkosty/install-tl-ubuntu), we can now install the latest version of TeX Live (currently **Tex Live 2015**) by simply running a script:

- Clone [scottkosty/install-tl-ubuntu](https://github.com/scottkosty/install-tl-ubuntu).
`git clone https://github.com/scottkosty/install-tl-ubuntu.git install-tl-ubuntu`

- Running the script. 
`sudo ./install-tl-ubuntu`

> Note: For more options or details, please consult the project.

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

## Install GMIP

- sudo add-apt-repository ppa:otto-kesselgulasch/gimp
- sudo apt-get update
- sudo apt-get install gmip

> Refer to [install-latest-gmip@askubuntu](http://askubuntu.com/a/134039/306000)

## Install Okular

- sudo apt-get install okular
