FROM docker.io/library/golang:latest
ARG VERSION=0.0.1

RUN pwd
COPY main.go /root/
RUN go build -o /root/http_program -ldflags="-X 'main.version=${VERSION}'" main.go

COPY /root/http_program /root/http_program2
CMD /root/http_program
