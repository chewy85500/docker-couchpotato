FROM hypriot/rpi-python
MAINTAINER Laurent Perrin

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install -y -q git-core python-lxml python-openssl

RUN cd /opt && \
  git clone http://github.com/RuudBurger/CouchPotatoServer /opt/CouchPotato

EXPOSE 5050

WORKDIR /opt

ENTRYPOINT ["python", "CouchPotato/CouchPotato.py"]