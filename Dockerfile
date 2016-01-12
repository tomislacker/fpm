FROM            ruby:2.0
MAINTAINER      tomislacker <tomislacker@users.noreply.github.com>

ENTRYPOINT ["/usr/local/bundle/bin/fpm"]

RUN     mkdir -p /usr/src/fpm
WORKDIR /usr/src/fpm
COPY    Gemfile /usr/src/fpm/
COPY    Gemfile.lock /usr/src/fpm/
COPY    . /usr/src/fpm/
RUN     bundle install

