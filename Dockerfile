FROM golang:alpine AS builder
WORKDIR /app
COPY . .
RUN go build -o desafio-go


FROM scratch
WORKDIR /app
COPY --from=builder /app/desafio-go /app/desafio-go

CMD ["/app/desafio-go"]