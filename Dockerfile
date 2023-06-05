FROM quay.io/projectquay/golang:1.20 AS builder
ARG TARGETOS
ARG TARGETARCH

# WORKDIR /go/src/app
# COPY . .
# RUN make get
# RUN make test
# RUN make build


FROM scratch AS binary
CMD while true; do { echo -e 'HTTP/1.1 200 OK\n\n Version: 1.0.0'; } | nc -vlp 8080; done
EXPOSE 8080