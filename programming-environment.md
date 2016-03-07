# Programming Environment

## Java and JDK (java8)

### Installation

### Configurations

- [Where can I find the Java SDK in Linux? (from stackoverflow)](http://stackoverflow.com/q/5251323/1833118)
  - `which javac`; `update-java-alternatives -l`; `cd / ; find . -name 'javac'`. Often it is in `/usr/lib/jvm/`.

## Eclipse

> *Note: The following configurations of Eclipse are independent of operating systems.*

### Installation

As of writing, the current release is [Eclipse Mars.1 (4.5.1) Release](https://www.eclipse.org/downloads/?osType=linux).
Just Download and unzip it. 

### Plugins installed
- Vrapper
- FindBugs

## Visual Studio

### Installation

> *Note:* The following instructions are mainly from [Web Page "Installing Android Studio"](http://developer.android.com/sdk/installing/index.html?pkg=studio).

- Unpack the downloaded ZIP file.
- `sudo apt-get install lib32stdc++6` OR `sudo apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6`
  
  These packages are required to support 32-bit apps on a 64-bit machine. Which one is needed depends on the version of your Linux system. For me (`version 15.10`), the former one will install packages `libc6-i386 lib32gcc1 lib32stdc++6`. Refer to [Error:Unable to run mksdcard SDK tool in ubuntu@stackoverflow](http://stackoverflow.com/q/29241640/1833118).
- For me (`version 15.10`), no need to restart.
- To launch Android Studio, navigate to the `android-studio/bin/` directory in a terminal and execute `sudo sh studio.sh`.
- `export PATH=$PATH:android-studio/bin/`
  
  - [ ] TODO or FIXME: Add `android-studio/bin/` to `PATH` so that you can start Android Studio from any directory.
- If the SDK is not already installed, follow the setup wizard to install the SDK and any necessary SDK tools.

> The SDK path is `/root/Android/Sdk`.

### Adding SDK Packages

> *Note:* The following instructions are mainly from [Web Page "Adding SDK Packages"](http://developer.android.com/sdk/installing/adding-packages.html).

***Important:*** To solve possible network connection error of
[Android SDK Manager gives "Failed to fetch URL https://dl-ssl.google.com/android/repository/repository.xml" error when selecting repository@stackoverflow](http://stackoverflow.com/questions/3808167/android-sdk-manager-gives-failed-to-fetch-url-https-dl-ssl-google-com-android), do 
`Appearance & Behavior` => `System Settings` => `Android SDK` => `SDK Update Sites` tab => check `Force https:... sources to be fetched using http...`

1. Get the latest SDK tools
  1. Open the Tools directory and select:
    - Android SDK Tools
    - Android SDK Platform-tools
    - Android SDK Build-tools (highest version)
  2. Open the first Android X.X folder (the latest version) and select:
    - SDK Platform
    - A system image for the emulator, such as `ARM EABI v7a System Image`
2. Get the support library for additional APIs
  Open the Extras directory and select:
    - Google Repository
    - Google Play services 
3. Get Google Play services for even more APIs

### Plugins

***Resources List:***
- [ZhiHu](http://www.zhihu.com/question/28026027)

***Plugins I Used:***

- Markdown + MultiMarkdown

  No need to use `Markdown Support`. `MultiMarkdown` renders a better "HTML Preview" than that `Markdown` does. 
- IdeaVim
- [ADB Idea@pbreault/adb-idea](https://github.com/pbreault/adb-idea)

  Support ADB commands directly in Visual Studio. Windows/Linux: `Ctrl+Alt+Shift+A`
- [codota](https://www.codota.com/)
  
  "Codota is a code search engine that understands code." `Ctrl + K`
  > Refer to [an blog article@Tikitoo](http://www.jianshu.com/p/59b89c26f9e0)

## Haskell

Install the all-in-one [Haskell Platform](https://www.haskell.org/platform/).
- `sudo apt-get install haskell-platform`


## Python


