#FROM ubuntu:22.04

#RUN apt-get update && apt-get install testssl -y && testssl --help

FROM alpine:latest

# Install required dependencies
#RUN apt-get update && apt-get install -y bash curl git openssl procps coreutils
RUN apk add --no-cache bash curl git openssl procps coreutils

# Clone testssl.sh repository
RUN git clone --depth 1 https://github.com/drwetter/testssl.sh.git /opt/testssl

# Set permissions
WORKDIR /opt/testssl
RUN chmod +x testssl.sh

# Set entrypoint
#ENTRYPOINT ["/opt/testssl/testssl.sh"]
CMD ["bash"]
