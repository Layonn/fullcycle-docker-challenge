FROM golang:1.21.0-alpine3.18

WORKDIR /app

COPY main.go /app

RUN echo running...

RUN go mod init main \
    && go build main.go

ENTRYPOINT [ "./main" ]