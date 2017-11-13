FROM ubuntu:16.04

LABEL version="0.2" \
      os="Ubuntu 16.04" \
      description="Build tools including Apache Ant, ruby gems, yarn, npm, gulp, bower, gulp and grunt."

RUN apt-get update

#######################
# Install Node & NPM  #
#######################

RUN apt-get install python-software-properties -y \
    && apt-get install curl  -y \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install nodejs -y


RUN npm install --silent -g \
        gulp-cli \
        grunt-cli \
        gulp \
        bower \
        markdown-styles \
        yarn


#######################
# Install Apache Ant  #
#######################

RUN apt-get install ant -y \
    && apt-get install openjdk-8-jdk -y

# Set environment variable for JAVA
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

#######################
# Install Ruby Gems   #
#######################
RUN apt-get install rubygems -y \
    && apt-get install ruby-bundler -y \
    && apt-get install ruby-dev -y \
    && apt-get install build-essential -y \
    && gem install ffi -v '1.9.6' \
    && gem install sass

VOLUME /src
WORKDIR /src

