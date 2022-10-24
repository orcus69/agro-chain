FROM ubuntu

ENV NODE_VERSION 14
ENV INSTALL_PATH /app

RUN apt-get update -qq && apt-get install -y curl wget

RUN curl -sL https://deb.nodesource.com/setup_$NODE_VERSION.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt install nodejs

RUN mkdir -p $INSTALL_PATH

RUN npm install -g ganache-cli
RUN npm install -g truffle


WORKDIR $INSTALL_PATH

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY package*.json ./

RUN npm install

COPY . $INSTALL_PATH

EXPOSE 8545
EXPOSE 5001
EXPOSE 8080