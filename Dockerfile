FROM golang:1.23.0

WORKDIR /code

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o /build ./cmd/main.go

CMD ["/build"]