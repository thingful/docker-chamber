FROM alpine:3.4 as final

RUN  apk update && apk upgrade \
  && apk add --no-cache ca-certificates wget \
  && update-ca-certificates

RUN wget https://github.com//segmentio/chamber/releases/download/v1.9.0/chamber-v1.9.0-linux-amd64 -O /bin/chamber && \
  chmod +x /bin/chamber
