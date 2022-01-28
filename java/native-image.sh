#!/bin/bash
# Set up graalvm native-image On docker Ubuntu20.04
# $ docker run -it -p 8848:8848 ubuntu:20.04
# (in docker container)$ apt-get update && apt-get install -y wget && wget https://gist.githubusercontent.com/liux-pro/8fc306411f51788ea6e57f5842f99ed1/raw/native-image.sh && bash native-image.sh
apt-get update
apt-get install -y build-essential libz-dev zlib1g-dev
apt-get install -y git wget curl
# graalvm native-image  building request libfreetype-dev ,which not mention on document
apt-get install -y libfreetype-dev

# language
apt-get install -y language-pack-zh-hans
locale-gen zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8

apt-get install -y zip unzip
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
sdk install java 21.2-nik
sdk install maven
gu install native-image

java -version
mvn -version