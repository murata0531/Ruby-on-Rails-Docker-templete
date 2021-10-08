FROM ruby:2.7
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    default-mysql-client \
    yarn

WORKDIR /ruby-on-rails-docker
COPY Gemfile Gemfile.lock /ruby-on-rails-docker/
RUN bundle install