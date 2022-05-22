# 株式会社プレックスのインターン課題
# 制作環境

|名前|バージョン|役割|
|---|---|---|
|Next.js|v16.14.0|フロントエンド|
|Ruby on rails|Ruby2.6.2 Rails6.1.4.6|バックエンド|
|PostgreSQL|---|データベース|

# 実際に動作を確認する
動作させるにはrubyをインストールした環境が必要。
環境が用意できたら下記手順を実行

1. 任意のディレクトリでリポジトリの取得
```
$ git clone git@github.com:YUDAI0910/kadai-api.git
```

2. railsの動作に必要なgemをインストール
```
$ cd kadai-api
$ bundle install
```

3. apiのDB接続情報の設定  
kadai-api/config/database.yml内のDB接続情報を環境に合わせて設定する。  
設定する場所は以下の  三つ
- user(PostgreSQLのユーザー名)
- password(ユーザーのパスワード)
- database(作成したデータベース名)

5. apiの起動
※フロント側とは別のターミナルを開いて実行
```
$ cd kadai-api
$ rails s
```

6. railsのページを開く  
[http://localhost:3000/](http://localhost:3000/)にアクセス
これでrailsの動作を確認できる。

# 苦労した点
・APIについての理解
・Graphqlの使い方

# バックエンド側で参考にした記事
https://zenn.dev/taku1115/articles/6c9fa97ab37e38
https://qiita.com/krtsato/items/4565051608a63f11b316
https://nakatanorihito.com/programming/docker-rails-postgresql/
https://zenn.dev/necocoa/articles/setup-graphql-ruby
https://postgresweb.com/uninstall-postgresql-ubuntu2004
https://qiita.com/1024xx4/items/8e43171aeda300b67213
https://www.oiax.jp/rails3book/setup_postgresql.html
https://tech.fusic.co.jp/posts/2019-08-23-rails-nuxt-graphql-todoapp/
