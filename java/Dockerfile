FROM ubuntu:20.04
RUN apt-get update \
    && apt-get install -y build-essential libz-dev zlib1g-dev libfreetype-dev git wget curl language-pack-zh-hans zip unzip \
    && locale-gen zh_CN.UTF-8 \
    && curl -s "https://get.sdkman.io" | bash 
RUN sdk install maven \
    && rm -f $HOME/.sdkman/archives/*
RUN sdk install java 21.2-nik \
    && gu install native-image \
    && rm -f $HOME/.sdkman/archives/*
