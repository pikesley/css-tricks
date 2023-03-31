FROM docker.io/ubuntu:lunar

ARG PROJECT
WORKDIR /opt/${PROJECT}

COPY ./ /opt/${PROJECT}

RUN apt-get -y update && apt-get install -y nodejs npm vim

COPY ./container-config/entrypoint.sh /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint"]
