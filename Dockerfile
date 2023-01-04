FROM docker.io/library/golang:latest
ARG VERSION=0.0.1
WORKDIR /root
RUN pwd
RUN go build -o http_program -ldflags="-X 'main.version=${VERSION}'" main.go

COPY ./http_program /root/
CMD /root/http_program
