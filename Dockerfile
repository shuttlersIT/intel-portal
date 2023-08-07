FROM golang:1.19-bullseye

RUN go install github.com/beego/bee/v2@latest

ENV GO111MODULE=on
ENV GOFLAGS=-mod=vendor

ENV APP_HOME /go/src/intel-portal
RUN mkdir -p "$APP_HOME"

WORKDIR "$APP_HOME"
EXPOSE 9193
CMD ["bee", "run"]