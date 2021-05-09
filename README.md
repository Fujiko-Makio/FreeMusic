# アプリ名
## FreeMusic

# 概要
### ・ Deviseを用いたユーザー新規登録、ログイン機能、ログアウト機能
### ・ Active_Hash、Active Storageを用いた投稿機能、削除機能、編集機能
### ・ Active_Hash、ransackを用いた投稿検索機能、投稿一覧表示機能

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
コロナ禍の影響により既存の音楽制作活動に支障をきたしている作曲家へ新たな認知を得るきっかけ作りに貢献したい。在宅ワークなどで家で過ごす時間が増えたユーザーの趣味、仕事など幅広い活動に音楽を利用できる。
作曲家のユーザー：自身の作曲した曲を色々な人に使用してもらい、自身の活動を認知してもらいやすい。
曲を利用するユーザー：さまざまな制作目的でのBGM、楽曲の利用をしたい。簡単な検索機能で探しているイメージのものが手に入る。

# DEMO
## トップページ
ログインしている場合は投稿画面へのリンクが表示されるようになっており、ログインしていない場合は新規登録ボタンが表示されるようになっています。
またカテゴリー検索機能を導入し、楽曲の検索が容易にできるようになっています。
投稿された楽曲が新着順に一覧表示されるようになっています。
[![Image from Gyazo](https://i.gyazo.com/edb586f91d7722baa212baa32d3b3724.jpg)](https://gyazo.com/edb586f91d7722baa212baa32d3b3724)
## 新規登録画面
必要な情報が入力されていない場合は日本語のエラーメッセージが表示されます。
[![Image from Gyazo](https://i.gyazo.com/99767a786ee3659089e7d2f438a06464.gif)](https://gyazo.com/99767a786ee3659089e7d2f438a06464)
会員登録後はトップページへ遷移します。
[![Image from Gyazo](https://i.gyazo.com/908a8504160ef133009de759ed19e869.gif)](https://gyazo.com/908a8504160ef133009de759ed19e869)
## ユーザー詳細画面
ユーザーの詳細画面ではユーザーのプロフィール欄とそのユーザーが投稿した楽曲が一覧表示されるようになっています。
[![Image from Gyazo](https://i.gyazo.com/ffd412e4321a302f3fea84843fdc979d.png)](https://gyazo.com/ffd412e4321a302f3fea84843fdc979d)
## 投稿内容詳細画面
投稿したユーザー本人は詳細画面に編集、削除ボタンが表示されています。
[![Image from Gyazo](https://i.gyazo.com/15f2512647c9be636b702de54aab775f.png)](https://gyazo.com/15f2512647c9be636b702de54aab775f)
ログインしているユーザーが別のユーザーが投稿した詳細画面では再生ボタンのみの表示になります。
[![Image from Gyazo](https://i.gyazo.com/3e11b6eeb68009db6155d7868f5578f3.png)](https://gyazo.com/3e11b6eeb68009db6155d7868f5578f3)
ログアウトしている場合は詳細ページに遷移しても再生ボタンは表示されません。
## カテゴリー検索機能
ログインの有無にかかわらずカテゴリー検索をすることが可能になっています。
検索後、一覧表示された楽曲の試聴についてはログインしているユーザーのみ可能となっています。
[![Image from Gyazo](https://i.gyazo.com/6b1efdf0cd2b425bbea12470e5273c8f.gif)](https://gyazo.com/6b1efdf0cd2b425bbea12470e5273c8f)

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
### 実装面
- 楽曲に関する著作権、ユーザーのプライバシー。
### 機能面
- アップロードしたMP3ファイルが30分ほどで視聴できなくなってしまう
## 今後実装したい機能
- AWSの導入
- レスポンシブWebデザインの設定
- 楽曲により有料、無料の選択機能
- 購入機能
- ゲストユーザーログイン機能

# DB設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| birthday           | date   | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| first_name_kana    | string | null: false               |
| last_name_kana     | string | null: false               |

### Association

- has_many :musics



## musics テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| musics_name      | string     | null: false                    |
| description      | text       | null: false                    |
| genre   _id      | integer    | null: false                    |
| image_id         | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user

# ER図
[![Image from Gyazo](https://i.gyazo.com/17475b1ad92972ad82dee3bd2a4132a0.png)](https://gyazo.com/17475b1ad92972ad82dee3bd2a4132a0)