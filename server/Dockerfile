FROM registry.cn-beijing.aliyuncs.com/liux-pro/base-image:java
ADD https://raw.githubusercontent.com/liux-pro/server/master/pom.xml .
RUN . "$HOME/.sdkman/bin/sdkman-init.sh" && mvn -Pnative -Phuawei-repo dependency:resolve