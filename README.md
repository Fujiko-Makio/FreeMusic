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


