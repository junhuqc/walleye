# Erlang docker image

FROM ubuntu:14.04
MAINTAINER Jun HU <junhufr@gmail.com>


# add the erlang repo and key
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl
RUN echo "deb http://packages.erlang-solutions.com/ubuntu trusty contrib" >> /etc/apt/sources.list
RUN curl -O http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc
RUN apt-key add erlang_solutions.asc && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y erlang-nox && apt-get autoremove

# fetch rebar3
WORKDIR /usr/bin
RUN curl -O https://s3.amazonaws.com/rebar3/rebar3 && chmod +x rebar3


EXPOSE 80