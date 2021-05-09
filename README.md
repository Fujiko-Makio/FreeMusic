# アプリ名
## FreeMusic

# 概要
### ・ ユーザー新規登録、ログイン機能、ログアウト機能
### ・ 投稿機能、削除機能、編集機能
### ・ 投稿検索機能、投稿一覧表示機能

# 本番環境
### Url：https://obscure-spire-59218.herokuapp.com/
### Basic認証
### ・ ID：fujiwara
### ・ Pass：0630
### ログイン情報(テスト用)
## テストユーザー１
### ・ Eメール：a@a
### ・ パスワード：mmm111
## テストユーザー２
### ・ Eメール：b@b
### ・ パスワード：mmm222

# 制作背景
作曲家のユーザー：自身の作曲した曲を色々な人に使用してもらい、自身の活動を知ってもらえる。
曲を利用するユーザー：さまざまな制作目的でのBGM、楽曲の利用をしたい。簡単な検索機能で探しているイメージのものが手に入る。
このアプリケーションの課題点：著作権に関するトラブル。

# DEMO



# 工夫したポイント
### ・ MP3ファイルの保存機能、それ以外のファイルでは保存できないようにする処理。
### ・ ユーザーがカテゴリーから検索できる機能
### ・ ユーザー詳細画面にて該当ユーザーの投稿内容の一覧表示機能

# 使用技術(開発環境)
## バックエンド
Ruby, Ruby on Rails

## フロントエンド
HTML, CSS, SCSS

# データベース
MySQL, SequelPro

# Webサーバー(本番環境)
Heroku

# アプリケーションサーバー(本番環境)
Heroku

# ソース管理
GitHub, GitHub Desktop

# テスト
RSpec

# エディタ
VSCode

# 課題や今後実装したい機能
## 課題
楽曲に関する著作権、ユーザーのプライバシー。
## 今後実装したい機能
- 楽曲により有料、無料の選択機能
- 購入機能
- ゲストユーザーログイン機能