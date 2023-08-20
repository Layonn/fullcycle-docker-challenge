FROM golang:alpine AS builder

WORKDIR /app

COPY main.go /app

RUN go mod init main \
    && go build main.go

FROM scratch

WORKDIR /app

COPY --from=builder /app /app

ENTRYPOINT ["./main"]
