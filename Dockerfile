FROM alpine:latest

# WITH OPENJDK 11
ENV JAVA_HOME="/usr/lib/jvm/default-jvm/"
RUN apk add openjdk11
ENV PATH=$PATH:${JAVA_HOME}/bin

# WITH GRADLE
ENV GRADLE_VERSION=4.9

# get gradle and supporting libs
RUN apk -U add --no-cache curl; \
    curl https://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip > gradle.zip; \
    unzip gradle.zip; \
    rm gradle.zip; \
    apk del curl; \
    apk update && apk add --no-cache libstdc++ && rm -rf /var/cache/apk/*

ENV PATH=${PATH}:/gradle-${GRADLE_VERSION}/bin

# WITH openssh
RUN apk update && apk add --no-cache openssh

RUN mkdir -p /work
RUN mkdir -p /GRADLE_CACHE

# Gradle work directory
VOLUME work
# Gradle cache directory
VOLUME GRADLE_CACHE
WORKDIR /work
