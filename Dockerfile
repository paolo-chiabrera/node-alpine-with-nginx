FROM node:8-alpine

MAINTAINER Paolo Chiabrera <paolo.chiabrera@gmail.com>

RUN apk add --no-cache nginx

RUN mkdir -p /run/nginx

ONBUILD COPY nginx.conf /etc/nginx/nginx.conf

CMD [ "nginx" ]
