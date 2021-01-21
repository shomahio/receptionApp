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


