FROM ubuntu:20.04
SHELL ["/bin/bash", "-c"]
RUN apt-get update \
    && apt-get install -y build-essential libz-dev zlib1g-dev libfreetype-dev git wget curl language-pack-zh-hans zip unzip \
    && locale-gen zh_CN.UTF-8 \
    && curl -s "https://get.sdkman.io" | bash 
RUN . "$HOME/.sdkman/bin/sdkman-init.sh" \
    && sdk install maven \
    && rm -f $HOME/.sdkman/archives/*
RUN . "$HOME/.sdkman/bin/sdkman-init.sh" \
    && sdk install java 21.3.0.r11-nik \
    && gu install native-image \
    && rm -f $HOME/.sdkman/archives/*