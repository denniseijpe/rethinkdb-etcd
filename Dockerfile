FROM rethinkdb:latest

MAINTAINER Dennis Eijpe | de programmeer

# Install net-tools for discovery service
RUN \
    apt-get update && \
    apt-get install -y net-tools && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add project files
ADD . /app
WORKDIR /app

CMD ["/app/bin/boot"]
