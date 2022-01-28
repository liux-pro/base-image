#!/bin/bash
# Set up graalvm native-image On docker Ubuntu20.04
# $ docker run -it -p 8848:8848 ubuntu:20.04
# (in docker container)$ apt-get update && apt-get install -y wget && wget https://gist.githubusercontent.com/liux-pro/8fc306411f51788ea6e57f5842f99ed1/raw/native-image.sh && bash native-image.sh



&& sdk install java 21.2-nik
&& gu install native-image
&& rm -f $HOME/.sdkman/archives/*
&& gu install native-image