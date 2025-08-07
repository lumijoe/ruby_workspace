# ruby_workspace

Ruby、Dockerの環境構築

# 起動
Dockerを使用してRubyを起動させる
```open -a Docker```
次に
```docker compose run --rm app bash```
または
```docker compose up```

# コマンドラインの違い
docker compose up

目的: サービス全体を起動する
動作: docker-compose.ymlで定義されたすべてのサービス（コンテナ）を起動
実行方法: 通常はWebサーバーやデータベースなどを起動して、アプリケーション全体を動かす
終了: Ctrl+C で停止、またはコンテナが自動終了する
用途: アプリケーションを実際に動かしたい時

docker compose run --rm app bash

目的: 一時的にコンテナに入って作業する
動作: appサービスのコンテナを起動して、bashシェルを実行
実行方法: コンテナ内でコマンドラインが使える状態になる
終了: exitまたはCtrl+Dで抜ける、--rmで自動削除
用途: デバッグ、パッケージインストール、ファイル確認など開発作業

