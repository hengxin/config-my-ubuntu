# Programming Environment and Developer Tools

## Java and JDK (java8)

### [Installation of JDK8-Oracle](http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html)
- `sudo add-apt-repository ppa:webupd8team/java` OR `echo | add-apt-repository ppa:webupd8team/java`: automatically press [enter]
  - if `add-apt-repository: command not found` [error occurs](https://pricklytech.wordpress.com/2014/05/16/ubuntu-server-14-4-trusty-add-apt-repository-command-not-found/): 
    - `sudo apt-get install software-properties-common` OR `echo "Y" | sudo apt-get install software-properties-common`: automatically enter "Y" to answer "Y/n"
- `sudo apt-get update`
- (Optional) `echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections`: auto accept license
- `sudo apt-get install oracle-java8-installer` OR `echo "Y" | sudo apt-get install oracle-java8-installer`: automatically enter "Y"
- `sudo apt-get install oracle-java8-set-default`: automatically set up the Java 8 environment variables

### [Installation of OpenJDK](http://askubuntu.com/a/464894/306000)
- `sudo apt-get install openjdk-8-jdk`
- `sudo apt-get install openjdk-8-jre`

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


## IntelliJ

### Installation
- [Install the latest version of IntelliJ IDEA Community Edition by JetBrains](http://stackoverflow.com/a/36483055/1833118)

```
sudo apt-add-repository ppa:mmk2410/intellij-idea-community
sudo apt-get update
sudo apt-get install intellij-idea-community
```

`which intellij-idea-community` => `/usr/bin/intellij-idea-community`

### Configurations

### Plugins
- Scala
- IdeaVim
- [Code Iris](https://plugins.jetbrains.com/plugin/7324?pr=idea)

  This plugin visualizes the modules, packages and classes of your project.
  See [its website](http://www.codeiris.com/).
- [PlantUML integration](https://plugins.jetbrains.com/plugin/?idea&id=7017)

  This plugin provides [PlantUML](http://plantuml.com/) diagramming tool integration.
  
  Check [config-my-ubuntu](https://github.com/hengxin/config-my-ubuntu/blob/master/ubuntu-configurations.md#install-plantuml) to [install PlantUML](https://gist.github.com/NLKNguyen/c39596c205ba1f1866c8).

## Eclipse

> *Note: The following configurations of Eclipse are independent of operating systems.*

### Installation

As of writing, the current release is [Eclipse Mars.1 (4.5.1) Release](https://www.eclipse.org/downloads/?osType=linux).
Just Download and unzip it. 

### Plugins installed
- Vrapper
- FindBugs

## Haskell

Install the all-in-one [Haskell Platform](https://www.haskell.org/platform/).
- `sudo apt-get install haskell-platform`


## Python

## Mathematica
- [`sudo bash install.sh`](http://support.wolfram.com/kb/12453): install

## Install LaTeX and Related Softwares

### Install LaTeX

Thanks to [scottkosty/install-tl-ubuntu](https://github.com/scottkosty/install-tl-ubuntu), 
we can now install the latest version of TeX Live (currently **Tex Live 2015**) by simply running a script:

- Clone [scottkosty/install-tl-ubuntu](https://github.com/scottkosty/install-tl-ubuntu).
`git clone https://github.com/scottkosty/install-tl-ubuntu.git install-tl-ubuntu`

- Running the script. 
`sudo ./install-tl-ubuntu`
