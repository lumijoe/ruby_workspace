# ruby_workspace

Ruby、Dockerの環境構築

# 起動
Dockerを使用してRubyを起動させる
```open -a Docker```
開発時
```docker compose run --rm app bash```
閲覧時
```docker compose up```

# コマンドラインの違い
```docker compose up```

目的: サービス全体を起動する
動作: docker-compose.ymlで定義されたすべてのサービス（コンテナ）を起動
実行方法: 通常はWebサーバーやデータベースなどを起動して、アプリケーション全体を動かす
終了: Ctrl+C で停止、またはコンテナが自動終了する
用途: アプリケーションを実際に動かしたい時

```docker compose run --rm app bash```

目的: 一時的にコンテナに入って作業する
動作: appサービスのコンテナを起動して、bashシェルを実行
実行方法: コンテナ内でコマンドラインが使える状態になる
終了: exitまたはCtrl+Dで抜ける、--rmで自動削除
用途: デバッグ、パッケージインストール、ファイル確認など開発作業

# ファイルを編集する際はexitで終了してリポジトリ表示でOK
~~ ruby_workspace% になったらOK
# rubyを実行したい時はDockerに入る必要がある
I have no name!~~:/app$ になっているか
outの方法は```exit```
# ファイルの表示方法は
Dockerに入ってから、```ruby calc.rb```

# インタプリタ方式
Dockerに入ってから、```irb```
```irb(main):001:0>``` の後に
puts ~~ で、　表示されるようになるので表示がどうなるか知りたいときに便利
最後は```exit```で終了（終了時エラーは影響なし、無視で大丈夫）

# ファイル作成
touch ファイル名
# 追記はecho~>>、確認はcat~
echo 'puts "追加内容"' >> hello_world.rb
I have no name!@baf359583f63:/app$ cat hello_world.rb 

# 複数起動させている時は puts hostname またはputs `hostname`
で対応しているコンテナ以外は停止させること

# 算術演算子
 / % **(2乗)+ - *

# 比較演算子
!= == < とか

# 論理演算子
&& どちらもtrueのときtrue
|| どちらかtrueのときtrue
! trueをfalseに、flaseをtrueにする

# Rubyの拡張機能、同じ関数を使用しているときの警告
VSCode拡張機能
Ruby 拡張機能
Ruby Solargraph
RuboCop 拡張機能
有効にならない場合は
com +shift+p　でOpen Settings JSON　のuserを選び
~Library/Application Support/Code/User/settings.jsonの部分が開かれるので
→ 〜"window.commandCenter": falseとなっている箇所に,を追加して
    "ruby.rubocop.onSave": true,
    "ruby.lint": {
        "rubocop": true
    }
    を追加。
- グレーアウトしている場合はインストールされていないので
- gem install rubocopをDocker環境上で実行
- ターミナルを再起動または再度重複関数でチェックしてみる
　〜Successfully 〜のような13 gems installedとなればOK

