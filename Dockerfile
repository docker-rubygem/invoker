FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.3

RUN gem install invoker --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["invoker"]
CMD ["--help"]
