FROM golang:1.14.4 as builder
WORKDIR /app
COPY . .
RUN go build main.go

######## Start a new stage #######
FROM ubuntu:18.04
RUN apt-get install
WORKDIR /app/
COPY --from=builder /app/main .
EXPOSE 8080
CMD ["./main"]