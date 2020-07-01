FROM node:alpine
LABEL ARCH=amd64
LABEL maintainer="Krishna Chaitanya"

ARG VCS_REF
ARG BUILD_DATE

RUN npm install http-server -g

RUN mkdir /public
WORKDIR /public
COPY ./test.html .

EXPOSE 8080
CMD ["http-server"]
