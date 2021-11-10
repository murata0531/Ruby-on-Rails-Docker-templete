# Ruby-on-Rails-Docker-templete

Ruby on Railsのdockerテンプレート

# 構築

```
$ docker-compose up -d --build

$ docker-compose exec web bash

bash# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

bash# echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

bash# apt update && apt install yarn

bash# webpacker:install

bash# rails s -b 0.0.0.0
```

mysqlデータベース初期設定

`config/database.yml` のdefaultを変更
```
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password:<%= ENV.fetch("DATABASE_PASSWORD") %>
  host: db
  port: 3306
```

```
bash# rails db:create
```

```
bash# rails db:migrate
```