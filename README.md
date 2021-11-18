# Ruby-on-Rails-Docker-templete

Ruby on Railsのdockerテンプレート

# 構築

```
$ docker-compose up -d --build

$ docker-compose exec web bash

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
  password: <%= ENV.fetch("DATABASE_PASSWORD") %>
  host: db
  port: 3306
```
