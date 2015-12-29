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
