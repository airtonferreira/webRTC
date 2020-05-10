FROM node:10-alpine

LABEL maintainer="airton.felix2@gmail.com"

WORKDIR /usr/src/app

COPY --chown=node ./package.json .

RUN npm install

COPY ./views ./views

COPY ./dist ./dist

COPY ./public ./public

EXPOSE 3000

ENTRYPOINT [ "npm", "run", "start:prod" ]