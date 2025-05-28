FROM ubuntu:latest
LABEL authors="anderdam"

ENTRYPOINT ["top", "-b"]