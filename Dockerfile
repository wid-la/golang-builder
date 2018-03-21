FROM golang:1.10-alpine

LABEL maintainer="Aurelien Chaudagne <ouralien@gmail.com>"

RUN apk add --update --no-cache git make gcc musl-dev

RUN go get -u github.com/golang/dep/cmd/dep \
    && go get -u github.com/solher/forklift \
    && go get -u github.com/alecthomas/gometalinter \
    && gometalinter --install \