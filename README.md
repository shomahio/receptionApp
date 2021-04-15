# アプリケーション概要
一般ユーザーはアプリ登録後お店を検索、予約することができます。
ビジネスシーンで使用するお店を検索する際に、重要なお店の雰囲気から詳細に検索することが可能です。
予約したお店はマイページの予約一覧から全て確認することができます。
また一般のユーザーは電子領収書を選択することもでき、店舗ユーザーから作成された領収書をマイページの領収書一覧から確認し、金額や宛名に相違がなければ、承認します。
作成された領収書はマイページから一元確認することができ、好きなタイミングで、好きな枚数印刷ができるため、領収書を自身で管理したりコピーしたりする必要がなくなります。
また行ってよかったと思える店舗の感想を写真付きで共有することができます。
飲食店はアプリに登録後、店舗情報を登録し公開します。登録時の開店時間、閉店時間から予約可能時間を自動に作成できます。
予約があればマイページの予約一覧から予約時間順に全て確認することができます。
一般ユーザーの希望があればこのアプリから電子領収書を作成することもでき、確定した領収書もマイページから一元管理することができます。
また飲食店情報詳細ページにお店の料理画像や店内画像といった決められた写真を載せることにより、一般のユーザーに店舗の雰囲気を伝えられます。

# 本番環境のURL
http://3.114.114.184/

# テスト用アカウント


# 制作背景
私は学生時代に2年半、前職でも営業職についていました。その時にお客様や上司と食事をすることがあり、その都度お店探しにとても苦労しました。
当時既存の飲食店予約アプリでは、ビジネスシーンで使う際に以下の点に課題を感じていました。
①店舗の雰囲気の詳細を掴めない
②領収書を一元管理できたらありがたい。
③お店の評価が正当か不安である。


# 制作背景
私は学生時代















# テーブル設計


## users テーブル

| Column             | Type   | Options                            |
| ------------------ | ------ | ---------------------------------- |
| nickname           | string | null: false                        |
| name               | string | null: false                        |
| email              | string | null: false,unique:true            |
| password           | string | null: false                        |
| encrypted_password | string | null: false                        |
| birthday           | date   | null: false                        |
| tel                | string | null: false                        |

### Association

- 
- has_many :reservations
- has_many :comments

## store テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| store_name         | string     | null: false                    |
| postal_code        | string     | null: false                    |
| prefecture_id      | integer    | null: false                    |
| city               | string     | null: false                    |
| address            | string     | null: false                    |
| building           | string     | null: false                    |
| tel                | string     | null: false                    |
| person             | string     | null: false                    |
| email              | string     | null: false,unique:true        |
| password           | string     | null: false                    |

### Association

- has_one  :information
- has_many :comments
- 

## informations テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| store_name         | string     | null: false                    |
| postal_code        | string     | null: false                    |
| prefecture_id      | integer    | null: false                    |
| city               | string     | null: false                    |
| address            | string     | null: false                    |
| building           | string     | null: false                    |
| tel                | string     | null: false                    |
| area_id            | integer    | null: false                    |
| genre_id           | integer    | null: false                    |
| budget_id          | integer    | null: false                    |
| light_id           | integer    | null: false                    |
| volume_id          | integer    | null: false                    |
| age_id             | integer    | null: false                    |
| room_id            | integer    | null: false                    |
| tobacco_id         | integer    | null: false                    |
| location_id        | integer    | null: false                    |
| service_id         | integer    | null: false                    |
| drink_style_id     | integer    | null: false                    |
| food_style_id      | integer    | null: false                    |
| space_id           | integer    | null: false                    |
| location_id        | integer    | null: false                    |
| service_id         | integer    | null: false                    |
| food_id            | integer    | null: false                    |
| drink_id           | integer    | null: false                    |
| store              | references | null: false, foreign_key: true |

### Association

- belongs_to :store
- has_many :comments
- has_many :reservations


## receipts テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| price       | string     | null: false                    |
| name        | string     | null: false                    |
| date        | date       | null: false                    |
| time        | time       | null: false                    |
| user        | references | null: false, foreign_key: true |
| reservation | references | null: false, foreign_key: true |

### Association

- belongs_to :reservation

## reservations テーブル

| Column       | Type       | Options                        |
| -------------| ---------- | ------------------------------ |
| name         | string     | null: false                    |
| date         | string     | null: false                    |
| time         | string     | null: false                    |
| user         | references | null: false, foreign_key: true |
| informations | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :information
- has_one    :receipt


## comments テーブル

| Column       | Type       | Options                        |
| -------------| ---------- | ------------------------------ |
| text         | text       | null: false                    |
| user         | references | null: false, foreign_key: true |
| informations | references | null: false, foreign_key: true |
### Association

- belongs_to :user
- belongs_to :information


