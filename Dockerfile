FROM ubuntu:14.04
MAINTAINER Yuri Tolstik <yuri.tolstik@collumino.com>

RUN apt-get update && apt-get install -y software-properties-common && apt-add-repository -y ppa:brightbox/ruby-ng && apt-get update && apt-get install -y ruby2.3 ruby-switch && ruby-switch --set ruby2.3 && apt-get clean all && gem install bundler --no-ri --no-rdoc

