FROM resin/rpi-raspbian:jessie
MAINTAINER Laurent Perrin

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install -y -q git-core python-lxml python-openssl libffi-dev libssl-dev zlib1g-dev libxslt1-dev libxml2-dev python python-pip python-dev build-essential

RUN cd /opt && \
  git clone http://github.com/RuudBurger/CouchPotatoServer /opt/CouchPotato

EXPOSE 5050

WORKDIR /opt

ENTRYPOINT ["python", "CouchPotato/CouchPotato.py"]
