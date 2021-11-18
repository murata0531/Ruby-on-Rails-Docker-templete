FROM ruby:2.7
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    default-mysql-client \
    yarn

RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock  /app/
RUN bundle install
COPY . /app

