FROM ubuntu:14.04

RUN apt-get update

RUN apt-get -y install curl

RUN curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh

RUN apt-get install -y gcc make g++

RUN td-agent-gem install \
  gelf \
  fluent-plugin-bigquery \
  fluent-plugin-elasticsearch \
  fluent-plugin-forest \
  fluent-plugin-kubernetes \
  fluent-plugin-kubernetes_metadata_filter \
  fluent-plugin-parser \
  fluent-plugin-s3 \
  fluent-plugin-secure-forward \
  fluent-plugin-splunkapi

RUN cd /etc/td-agent/plugin && wget https://raw.githubusercontent.com/emsearcy/fluent-plugin-gelf/master/lib/fluent/plugin/out_gelf.rb

ENTRYPOINT ["td-agent"]

