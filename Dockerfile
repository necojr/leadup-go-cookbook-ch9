FROM golang:1.9.2
    ENV SRC_DIR=/go/src/github.com/necojr/leadup-go-cookbook-ch9
    ENV GOBIN=/go/bin

    WORKDIR ${GOBIN}

    ADD . ${SRC_DIR}

    RUN cd /go/src

    RUN go install github.com/necojr;
    ENTRYPOINT ["./leadup-go-cookbook-ch9"]

    EXPOSE 8000