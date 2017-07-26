# Networking

# Select Server for Downloading Ubuntu Software (Important!)

- Open `Software & Updates` 
- `Download from:` | `Other...` | `Select Best Server` | `Choose Server`

*Note:* My Ubuntu is `Release: 16.10 Codename: yakkety`.

It selected `http://ftp.sjtu.edu.cn/ubuntu` for me.

(Optional) The `ucdavis` server below works well for me.
`
deb http://mirror.math.ucdavis.edu/ubuntu/ yakkety-updates universe main multiverse
deb http://mirror.math.ucdavis.edu/ubuntu/ yakkety main universe multiverse
`

## Hosts (Important!)

[lennylxx/ipv6-hosts](https://github.com/lennylxx/ipv6-hosts): Hosts file which is used for 
  improving IPv6 access speed to Google, YouTube, Facebook, Wikipedia, etc. in Mainland China.

*Note:* Your wifi may not support ipv6.

- `git clone https://github.com/lennylxx/ipv6-hosts.git`
- `cd ipv6-hosts`
- `sudo bash -c 'cat hosts >> /etc/hosts'`: merging `hosts.out` into `etc/hosts` 
  - Keeping the localhost lines in `/etc/hosts`
  - [`bash -c` to avoid the Permission Denied error](https://stackoverflow.com/a/11016453/1833118)
  - Not using `./merge_snippets.sh /etc/hosts`
- `sudo /etc/init.d/networking restart`: restart the networking service

[racaljk/hosts](https://github.com/racaljk/hosts): Hosts file for ipv4.

*Note:* Ipv4 easily fails.

## Shadowsocks (SS)

Using SS if the hosts method fails.

[Installation for SS](https://github.com/shadowsocks/shadowsocks-qt5/wiki/Installation)

- `sudo add-apt-repository ppa:hzwhuang/ss-qt5`
- `sudo apt update`
- `sudo apt install shadowsocks-qt5`

[Proxy Configuration in Chrome for SS](https://github.com/shadowsocks/shadowsocks-qt5/wiki/%E4%BD%BF%E7%94%A8%E6%89%8B%E5%86%8C#%E5%BA%94%E7%94%A8%E7%A8%8B%E5%BA%8F%E7%9A%84%E4%BB%A3%E7%90%86%E8%AE%BE%E7%BD%AE)

- `Chrome Setting | Open proxy settings | Network proxy`: open proxy setting

The proxy consists of 3 parameters that must be the same with those in your SS connection.

- Server Type: HTTPS Proxy (for myself)
- Local Address: 127.0.0.1 (*Note:* this is fixed!)
- Local Port: 1080 (for myself)

Remember to disconnect and re-connect your SS connection.

## Source List

*Note:* Not Necessarily. See the `Select Server for Downloading Ubuntu Software` section.

### [How to Add/Modify the Source List](http://wiki.ubuntu.org.cn/%E6%BA%90%E5%88%97%E8%A1%A8)

- `sudo cp /etc/apt/sources.list /etc/apt/sources.list_backup`: for backup
- `sudo gedit /etc/apt/sources.list`: open the `sources.list` file
- Adding/modifying the list; See below for the possible sources.list 
- `sudo apt-get update`
