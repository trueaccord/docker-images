FROM golang:1.5

RUN apt-get update && apt-get install -q -y libltdl-dev

RUN go get -u github.com/cloudflare/cfssl/cmd/cfssl

RUN go get -u github.com/cloudflare/cfssl/cmd/...

ENTRYPOINT ["cfssl"]

