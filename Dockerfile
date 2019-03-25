FROM debian:9.8@sha256:72e996751fe42b2a0c1e6355730dc2751ccda50564fec929f76804a6365ef5ef
LABEL MAINTAINER="Clarity Systems <systemc@clarity.ai>"

RUN  apt-get update \
  && apt-get install --no-install-recommends -qy mysql-client=5.5.9999+default \
  && apt-get clean \
  && rm -fr /var/lib/apt/lists/*

