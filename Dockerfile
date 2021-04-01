FROM node:alpine
LABEL ARCH=amd64
LABEL maintainer="Krishna Chaitanya"

ARG VCS_REF
ARG BUILD_DATE

RUN npm install http-server -g

RUN mkdir /public
WORKDIR /public

EXPOSE 8080
CMD ["http-server"]
