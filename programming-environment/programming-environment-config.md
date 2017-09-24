# Programming Languages Configuration

## Java and JDK (java8)

***Note:*** You can run [`jdkinstaller`](https://github.com/hengxin/config-my-ubuntu/blob/master/programming-environment/jdkinstaller.sh) to automatically install and set jdk8.
The following shows howtos.

### [Installation of JDK8-Oracle](http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html)
- `sudo add-apt-repository ppa:webupd8team/java` OR `echo | add-apt-repository ppa:webupd8team/java`: automatically press [enter]
  - if `add-apt-repository: command not found` [error occurs](https://pricklytech.wordpress.com/2014/05/16/ubuntu-server-14-4-trusty-add-apt-repository-command-not-found/): 
    - `sudo apt-get install software-properties-common` OR `echo "Y" | sudo apt-get install software-properties-common`: automatically enter "Y" to answer "Y/n"
- `sudo apt-get update`
- (Optional) `echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections`: auto accept license
- `sudo apt-get install oracle-java8-installer` OR `echo "Y" | sudo apt-get install oracle-java8-installer`: automatically enter "Y"
- `sudo apt-get install oracle-java8-set-default`: automatically set up the Java 8 environment variables

### [Installation of OpenJDK](http://askubuntu.com/a/464894/306000)
- `sudo apt-get install openjdk-8-jdk`: jdk and jre
- `sudo apt-get install openjdk-8-jre`: only jre

### Configurations
- `java -version`
- `javac -version`
- `java -showversion`
- [Where can I find the Java SDK in Linux? (from stackoverflow)](http://stackoverflow.com/q/5251323/1833118)
  - `which javac`
  - `update-java-alternatives -l`
  - `cd / ; find . -name 'javac'`. Often it is in `/usr/lib/jvm/`.

### Switch Java Versions
- `sudo update-java-alternatives -s java-7-oracle`
- `sudo update-java-alternatives -s java-8-oracle`

## Python

## Haskell

### Install the all-in-one [Haskell Platform](https://www.haskell.org/platform/).
- `sudo apt-get install haskell-platform`

### [Package-based install](https://www.haskell.org/downloads/linux)

- [Steps to setup `ghc` and `cabal`:](https://www.haskell.org/downloads/linux)

	```
	sudo apt-get update
	sudo apt-get install -y software-properties-common
	sudo add-apt-repository -y ppa:hvr/ghc
	sudo apt-get update
	sudo apt-get install -y cabal-install-1.22 ghc-7.10.3
	cat >> ~/.bashrc <<EOF
	export PATH="\$HOME/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:\$PATH"
	EOF
	export PATH=~/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:$PATH
	```
- [Steps to setup stack](https://github.com/commercialhaskell/stack/blob/master/doc/install_and_upgrade.md#ubuntu)

  1. Get the FP Complete key
	- `sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 575159689BEFB442`
  2. Add the appropriate source repository (if not sure, run lsb_release -a to find out your Ubuntu version):
    - `echo 'deb http://download.fpcomplete.com/ubuntu wily main'|sudo tee /etc/apt/sources.list.d/fpco.list`: I use 15.10.
  3. Update apt and install
    - `sudo apt-get update && sudo apt-get install stack -y`
