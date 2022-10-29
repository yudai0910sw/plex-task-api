# 株式会社プレックスのインターン選考課題

## 課題内容
- 提出期限　2週間以内
- 要件<br>課題は自身のGitHubアカウントにパブリックな状態で公開すること<br>下記の技術スタックで開発し、バックエンドとフロントエンドでレポジトリを1つずつ作成すること<br>各レポジトリ直下のREADME.mdにローカルで実行するための方法をまとめること
- 制作物に関して<br>Twitterのような掲示板サイト<br>閲覧/投稿ができること<br>画面数は1ページで良い<br>ログイン機能は無くて良い<br>ローカルで動かせれば良いので、サーバーなどをホスティングする必要はない<br>デザインは必要最低限で良い
- 技術スタック<br>
 --バックエンド<br>
Ruby<br>
Ruby on Rails<br>
graphql-ruby<br>
--フロントエンド<br>
TypeScript<br>
Next.js<br>
Apollo Client<br>
--データベース<br>
PostgreSQL<br>

## 開発環境

|名前|バージョン|役割|
|---|---|---|
|Next.js|v16.14.0|フロントエンド|
|Ruby on rails|Ruby2.6.2 Rails6.1.4.6|バックエンド|
|PostgreSQL|---|データベース|

## 実際に動作を確認する
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
※[フロント側](https://github.com/yudai0910sw/plex-task-front)とは別のターミナルを開いて実行
```
$ cd kadai-api
$ rails s
```

6. railsのページを開く  
[http://localhost:3000/](http://localhost:3000/)にアクセス
これでrailsの動作を確認できる。

## 苦労した点
・APIについての理解
・Graphqlの使い方

## バックエンド側で参考にした記事
https://zenn.dev/taku1115/articles/6c9fa97ab37e38
https://qiita.com/krtsato/items/4565051608a63f11b316
https://nakatanorihito.com/programming/docker-rails-postgresql/
https://zenn.dev/necocoa/articles/setup-graphql-ruby
https://postgresweb.com/uninstall-postgresql-ubuntu2004
https://qiita.com/1024xx4/items/8e43171aeda300b67213
https://www.oiax.jp/rails3book/setup_postgresql.html
https://tech.fusic.co.jp/posts/2019-08-23-rails-nuxt-graphql-todoapp/
