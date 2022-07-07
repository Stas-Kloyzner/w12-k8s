# set base image
FROM ubuntu:20.04

# set label
LABEL maintainer="stas.kloy"

RUN apt-get update

Run apt-get upgrade -y

RUN apt-get install sudo

RUN sudo apt install curl -y

RUN curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - && sudo apt-get install -y nodejs

RUN npm install npm@latest -g

WORKDIR ~/app

COPY . .

RUN npm install

EXPOSE 8080

CMD npm run initdb

CMD npm run dev