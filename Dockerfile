FROM node:8.11.1-alpine

LABEL maintainer="yash_sharma@seologistics.com"


RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app
EXPOSE 3001
CMD [ "npm", "run","nodemon" ]