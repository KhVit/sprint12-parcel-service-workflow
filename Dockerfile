FROM golang:1.22.3

RUN go version
ENV GOPATH=/

COPY . .

# build go app
RUN go mod download
RUN go mod tidy
RUN go build -o parcel-service .

CMD ["./parcel-service"]
