# Developer Tools Configuration

## Git

- Install Git: `sudo apt-get install git`
- [Upgrade Git](http://askubuntu.com/a/579591/306000)
  - `sudo apt-get remove git => sudo add-apt-repository ppa:git-core/ppa =>  sudo apt-get update =>   sudo apt-get install git  =>  git --version`

## [Gradle](http://gradle.org/)
- [Upgrading Gradle to the latest version on Ubuntu](http://wtanaka.com/node/8079)

```
sudo add-apt-repository ppa:cwchien/gradle
sudo apt-get update

sudo apt-get install gradle-2.13 % for specific version
sudo apt-get install gradle-ppa % for the latest version
```

## [Graphviz](http://www.graphviz.org/)

- `sudo apt-get install graphviz`

## [PlantUML](http://plantuml.com/)

*Note:* The following instructions are from [NLKNguyen/Installation.md](https://gist.github.com/NLKNguyen/c39596c205ba1f1866c8).

- Java required
- Install [Graphviz](http://www.graphviz.org/): `sudo apt-get install graphviz`
- Download [plantuml.jar](http://plantuml.sourceforge.net/download.html)
- Store in for example `~/java/plantuml.jar`
- Test whether it is working: `java -jar ~/java/plantuml.jar -testdot`

## VYM (Visual Your Mind): A MindMap tool
- [VYM: Visual Your Mind](http://www.insilmaril.de/vym/#mc:0,bo:3,bo:2)
  
  `sudo apt-get install vym` to install; then `vym` to run.
