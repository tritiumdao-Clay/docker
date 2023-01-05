FROM docker.io/library/golang:latest
ARG VERSION=0.0.1

RUN echo "`pwd`"
RUN echo 'we are running some # of cool things'

COPY http_program /root/http_program
CMD /root/http_program
