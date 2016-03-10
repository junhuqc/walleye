# Erlang docker image

FROM msaraiva/erlang:18.1
MAINTAINER Jun HU <junhufr@gmail.com>

# fetch rebar3
COPY rebar3 /usr/bin/
RUN chmod +x /usr/bin/rebar3


EXPOSE 80