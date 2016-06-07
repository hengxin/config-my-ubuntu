# Programming Environment

## Java and JDK (java8)

### Installation

### Configurations

- [Where can I find the Java SDK in Linux? (from stackoverflow)](http://stackoverflow.com/q/5251323/1833118)
  - `which javac`; `update-java-alternatives -l`; `cd / ; find . -name 'javac'`. Often it is in `/usr/lib/jvm/`.

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


