FROM golang:1.11
WORKDIR /go/src/github.com/suyashkumar/ssl-proxy
RUN apk add --no-cache make git zip
RUN go get -u github.com/golang/dep/cmd/dep
COPY . .
RUN make 
