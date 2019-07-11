#!/bin/bash - 
#===============================================================================
#
#          FILE: jdkinstaller.sh
# 
#         USAGE: ./jdkinstaller.sh 
# 
#   DESCRIPTION: Automatically install and configure JDK 8.
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Hengfeng Wei (ant-hengxin) 
#  ORGANIZATION: 
#       CREATED: 2016-08-25 21:43
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# TODO: adding options
#    - jdk version
# TODO: check if jdk of the right version has already been installed

echo "Y" | sudo apt-get install software-properties-common
echo | add-apt-repository ppa:webupd8team/java
sudo apt update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
echo "Y" | sudo apt install oracle-java8-installer
sudo apt install oracle-java8-set-default

echo "Installed Successfully."
echo
# echo `java -version`
# echo `javac -version`

exit 1
