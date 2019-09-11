FROM node:alpine as builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install

COPY . .

RUN yarn build

FROM nginx

EXPOSE 80
