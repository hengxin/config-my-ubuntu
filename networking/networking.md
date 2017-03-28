# Networking

## Hosts

[lennylxx/ipv6-hosts](https://github.com/lennylxx/ipv6-hosts): Hosts file which is used for improving IPv6 access speed to Google, YouTube, Facebook, Wikipedia, etc. in Mainland China.

- `git clone https://github.com/lennylxx/ipv6-hosts.git`
- `cd ipv6-hosts`
- `./update_hosts hosts`: the output is `hosts.out.new`
- Merging `hosts.out.new` into `etc/hosts` (*Note:* keeping the localhost lines in `etc/hosts`)
- `sudo /etc/init.d/networking restart`: restart the networking service

## Source List

### [How to Add/Modify the Source List](http://wiki.ubuntu.org.cn/%E6%BA%90%E5%88%97%E8%A1%A8)

- `sudo cp /etc/apt/sources.list /etc/apt/sources.list_backup`: for backup
- `sudo gedit /etc/apt/sources.list`: open the `sources.list` file
- Adding/modifying the list; See below for the possible sources.list 
- `sudo apt-get update`

### Alternative Source Lists

***Note:*** For me, I have to open the `Software & Updates` to select the bese server.

*Note:* My Ubuntu is `Release: 16.10 Codename: yakkety`.

The `ucdavis` server below works well for me.
`
deb http://mirror.math.ucdavis.edu/ubuntu/ yakkety-updates universe main multiverse
deb http://mirror.math.ucdavis.edu/ubuntu/ yakkety main universe multiverse
`

## Shadowsocks (SS)

[Installation for SS](https://github.com/shadowsocks/shadowsocks-qt5/wiki/Installation)

- `sudo add-apt-repository ppa:hzwhuang/ss-qt5`
- `sudo apt-get update`
- `sudo apt-get install shadowsocks-qt5`

