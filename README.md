# アプリ名
## <a href="https://obscure-spire-59218.herokuapp.com/"> 🎵 FreeMusic</a>
### ユーザー同士で楽曲の共有ができるアプリケーション
[![Image from Gyazo](https://i.gyazo.com/0b4173e7cb426a3cbb6d5cfd0c63269f.jpg)](https://gyazo.com/0b4173e7cb426a3cbb6d5cfd0c63269f)

# 🌐 概要・制作背景
### ＊はじめに：当アプリケーションは最初MacによりHerokuへのデプロイをかんりょうさせ、その後windowsへ移行して作成を進め、改めてwindowsの環境構築を行い現在も制作中です。
### ・自身の動画編集経験より楽曲やBGMなどの利用する際に簡単に検索でき、購入やダウンロードをしやすいアプリケーションの開発したかった。また音楽活動経験より、バンド間でデモの曲を確認する際、既存のwebサービスだと手間と時間がかかりファイルでの曲の管理なども面倒になると考え、バンド間で曲のやり取りをする際にバンドだけの曲のストレージ管理としても当アプリケーションは役に立つと考えた。

# 🌐 本番環境URL
### ---AWS---
### http://35.75.123.67/ (Elastic IP)
### ---Heroku---
### Dockerを用いたアプリケーションURL
### https://freemusic-docker-mak.herokuapp.com/

### ・HerokuにてデプロイしたURL
### https://obscure-spire-59218.herokuapp.com/



# 🌐 工夫したポイント
### ・ Active_Hashを利用したカテゴリー一覧よりransackを用いての検索
### ・ Amazon Simple Storage Service(S3)を用いたストレージの管理
### ・ ユーザー詳細画面にて該当ユーザーの投稿内容の一覧表示機能
### ・ N+1問題を意識した検索機能、ユーザー詳細機能
### ・ MP3ファイルの保存機能、それ以外のファイルでは保存できないようにする処理。
### ・ Dockerコンテナの作成
### ・ Dockerを用いてHerokuへのデプロイ
### ・ AWSへのデプロイ

# 🌐 現在の課題や今後実装したい機能
## 今後実装したい機能
### - CircleCiを導入し自動テストと自動デプロイの導入
### - Amazon Elastic Container Serviceを利用してDockerコンテナのAWSへのデプロイ
### - レスポンシブWebデザインの設定
### - 楽曲により有料、無料の選択機能
### - 購入機能の追加
### - ゲストユーザーログイン機能

# 🌐 使用技術(開発環境)
## バックエンド
### Ruby
## フレームワーク
### Ruby on Rails

## フロントエンド
### HTML, CSS

# データベース
### MySQL8.0

# サーバー 
### Nginx
### Puma, Unicorn

# インフラ
### AWS, Heroku,

# ソース管理
### Git, GitHub

# テスト
### RSpec

# エディタ
### VSCode


## ・ トップページ
### ログインしている場合は投稿画面へのリンクが表示されるようになっており、ログインしていない場合は新規登録ボタンが表示されるようになっています。
### ・ ログイン時
[![Image from Gyazo](https://i.gyazo.com/859f8e727b3973dddf5237da2b199eaa.jpg)](https://gyazo.com/859f8e727b3973dddf5237da2b199eaa)
### ・ 非ログイン時
[![Image from Gyazo](https://i.gyazo.com/36547bbc7cf0c3ef70ca86d09ad8bb3d.jpg)](https://gyazo.com/36547bbc7cf0c3ef70ca86d09ad8bb3d)
### ・ 投稿された楽曲が新着順に一覧表示されるようになっています。
[![Image from Gyazo](https://i.gyazo.com/5d12d4f703a6e39bc31d10f8d90810bc.jpg)](https://gyazo.com/5d12d4f703a6e39bc31d10f8d90810bc)
## ・カテゴリー検索機能
### Active_Hash、ransackを導入し、ログインの有無にかかわらずカテゴリー検索をすることが可能になっています。
### 検索後、一覧表示された楽曲の試聴についてはログインしているユーザーのみ可能となっています。
[![Image from Gyazo](https://i.gyazo.com/6b1efdf0cd2b425bbea12470e5273c8f.gif)](https://gyazo.com/6b1efdf0cd2b425bbea12470e5273c8f)
## ・ Deviseを用いたユーザー新規登録、ログイン機能、ログアウト機能
### 会員登録後はトップページへ遷移します。
[![Image from Gyazo](https://i.gyazo.com/908a8504160ef133009de759ed19e869.gif)](https://gyazo.com/908a8504160ef133009de759ed19e869)
### 必要な情報が入力されていない場合は日本語のエラーメッセージが表示されます。
[![Image from Gyazo](https://i.gyazo.com/99767a786ee3659089e7d2f438a06464.gif)](https://gyazo.com/99767a786ee3659089e7d2f438a06464)
## ・ユーザー詳細画面
### ユーザーの詳細画面ではユーザーのプロフィール欄とそのユーザーが投稿した楽曲が一覧表示されるようになっています。
[![Image from Gyazo](https://i.gyazo.com/ffd412e4321a302f3fea84843fdc979d.png)](https://gyazo.com/ffd412e4321a302f3fea84843fdc979d)
## ・投稿機能
### Active_Hash、Active Storageを用いて楽曲の投稿が行えます。また楽曲のファイルはMP3のみになっており、それ以外のファイルでは投稿できないようになっています。
[![Image from Gyazo](https://i.gyazo.com/84c7a7431d6831f0942958fe3d11bb02.gif)](https://gyazo.com/84c7a7431d6831f0942958fe3d11bb02)
## ・投稿内容詳細画面
### 投稿したユーザー本人は詳細画面に編集、削除ボタンが表示されています。
[![Image from Gyazo](https://i.gyazo.com/15f2512647c9be636b702de54aab775f.png)](https://gyazo.com/15f2512647c9be636b702de54aab775f)
### ログインしているユーザーが別のユーザーが投稿した詳細画面では再生ボタンのみの表示になります。
[![Image from Gyazo](https://i.gyazo.com/3e11b6eeb68009db6155d7868f5578f3.png)](https://gyazo.com/3e11b6eeb68009db6155d7868f5578f3)
### ログアウトしている場合は詳細ページに遷移しても再生ボタンは表示されません。また新規登録ページへのリンクが表示されるようになっています。
[![Image from Gyazo](https://i.gyazo.com/fb53b40d22778ebbe4f06305512d1ee4.png)](https://gyazo.com/fb53b40d22778ebbe4f06305512d1ee4)


# 🌐 DB設計

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

# 🌐 ER図
[![Image from Gyazo](https://i.gyazo.com/4e1797116c76fc5a99333b56881c6508.png)](https://gyazo.com/4e1797116c76fc5a99333b56881c6508)