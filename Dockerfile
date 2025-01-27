FROM debian:bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    apache2 apache2-utils curl bash wget git vim \
    net-tools iproute2 dnsutils telnet tcpdump \
    zip unzip openssl ca-certificates build-essential \
    gzip tar cmake sqlite3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
