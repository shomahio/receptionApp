# アプリケーション概要
**ビジネスシーンに特化した飲食店予約アプリです。**<br>
従来の飲食店予約アプリ同様、飲食店の検索、予約、マイページ機能に加えて**店舗の雰囲気検索機能**、**予約可能時間の自動作成機能**、**電子領収書作成機能**を実装し、ビジネスマンの接待や簡単な食事の際に重要なお店選びに使えるアプリです。
[![Image from Gyazo](https://i.gyazo.com/5c845fa8d952856fb6415696ae57d33e.jpg)](https://gyazo.com/5c845fa8d952856fb6415696ae57d33e)
# 本番環境のURL
http://3.114.114.184/

# テスト用アカウント
### 「店舗ユーザー」<br>
メールアドレス:test@test<br>
パスワード:12345a<br>
### 「一般ユーザー」<br>
メールアドレス:test1@test<br>
パスワード:12345b


# 制作背景
私は学生時代に2年半、前職でも営業職についていました。その時にお客様や上司と食事に行くことがあり、その都度お店探しにとても苦労しました。
というのも、お客様や上司と食事に行く時は、使用するお店の雰囲気を詳細に把握し、かつアクセスの良さなど考慮すべき点が多いからです。
実際、私を含め営業職についている友人、先輩１４人に聞き取りをした所、７割の方がビジネスシーンで使用するお店はアプリなどで検索をするのではなく、過去に使用したことがあるお店や信頼できる人に紹介をしてもらったお店を使用していると回答して頂けました。またそのようなお店をノート、メモアプリ、GoogleMapで管理している方がほとんどでした。
既存の飲食店予約アプリでは、ビジネスシーンで使う際に以下の点に課題を感じていました。
* 店舗の雰囲気の詳細を掴めない。
* 領収書を一元管理できたらありがたい。
* お店の評価が正当か不安である。
* 「接待」という言葉の範囲が広くて、商談ではなく食事や待ち合わせに使えるお店がヒットしない。<br>

このような課題を解決できるアプリを作成し営業マンのお店を決めるセンスに対するプレッシャーをやわげたいと思いこのアプリを企画しました。

# 使用技術
-  Ruby 2.6.5
-  Ruby on Rails 6.0.3
-  MySQL 14.14
-  Nginx
-  puma
-  AWS
    - S3
    - EC2
*  RSpec

# 機能一覧
## 飲食店ユーザー、一般ユーザー登録機能(device)
飲食店、ユーザーがアプリを使用するために登録することができます。（検索機能は登録しなくても可能です。）<br>
飲食店はアプリ登録後、店舗情報を登録しなければマイページに遷移できない為登録前はマイページに飛べずに店舗情報登録ページに遷移します。
[![Image from Gyazo](https://i.gyazo.com/a0638a6c7479e489a2be28b16516eca0.gif)](https://gyazo.com/a0638a6c7479e489a2be28b16516eca0)
[![Image from Gyazo](https://i.gyazo.com/ab9a90f7e61dcf77cba4cbc9df63b594.gif)](https://gyazo.com/ab9a90f7e61dcf77cba4cbc9df63b594)

* * *  
## 店舗情報登録機能（ancestry,Ajax）
飲食店は店舗の情報を登録することができます。<br>
店舗は登録に付き１つの店舗情報しか登録できないために店舗情報登録後、マイページに遷移します。<br>
[![Image from Gyazo](https://i.gyazo.com/b32a93b6078609dde9f8ed28deaaf449.gif)](https://gyazo.com/b32a93b6078609dde9f8ed28deaaf449)
* * * 

## 予約可能時間自動作成機能(module)
自作のmoduleにより予約可能時間自動作成機能。<br>
店舗詳細ページを誰かが開く度に、店舗情報の営業開始時間、終了時間から自動的に１時間ごとの予約可能時間を作成することができる。また前日以降のレコードの自動削除機能、一般ユーザー、店舗ユーザーどちらも編集可能です。
予約があれば、マイページの予約一覧から確認可能です。
[![Image from Gyazo](https://i.gyazo.com/576b51f8abb6ec31b451b856be956533.gif)](https://gyazo.com/576b51f8abb6ec31b451b856be956533)
* * * 

## 店舗検索機能(ransack)
ransackを用いた検索機能。<br>
ジャンル、エリアはancestryを用いて階層構造にすることで親と子を紐付けている為、キーワード検索のキーワードは店名、食材、親ジャンル、子ジャンルが検索可能です。エリアは交通手段、都道府県、子エリアから検索可能です。<br>
予算は上限、下限の範囲検索が可能です。<br>
上記以外はラジオボタン検索が可能です。
[![Image from Gyazo](https://i.gyazo.com/e2005ce13b24198fe22cd3fdb15235a2.gif)](https://gyazo.com/e2005ce13b24198fe22cd3fdb15235a2)
* * * 

## 飲食店予約機能(simple_calender)
moduleにより作成したレコードをsimple_calenderにより表示しています。<br>
予約可能時間があればカレンダーに◎、△を表示しそこから予約ページに遷移でき、情報を送信すれば、飲食店、一般ユーザーの予約一覧に追加され確認することができます。飲食店、一般ユーザーともに削除編集可能です。
また予約が残り一席になればカレンダーには△、埋まれば×になり予約できなくなります。
[![Image from Gyazo](https://i.gyazo.com/277ab203f22a49b609ea34bbaca939d3.gif)](https://gyazo.com/277ab203f22a49b609ea34bbaca939d3)
* * * 

## 領収書作成機能
一般ユーザーが電子領収書を希望された場合、店舗ユーザーは予約一覧から領収書作成ページに飛び、情報を入力することで作成できます。作成された領収書が正しかったら、ユーザーが承認します。承認された領収書が確定領収書として店舗、一般ユーザーのマイページの領収書一覧に追加されます。領収書がアプリで一元管理できることで、一般ユーザーの領収書管理の負担を軽減できます。
[![Image from Gyazo](https://i.gyazo.com/d1ffe7729dd5a417345147b85a86b431.gif)](https://gyazo.com/d1ffe7729dd5a417345147b85a86b431)
* * * 

# 洗い出した要件定義
| 優先順位  （高:3 中:2 低:1） | 機能 | 目的 | 詳細 | 
-|-|-|-
| 3 | ユーザー管理機能 | deviceを用いたユーザー管理機能 | トップページの右上のボタンで新規登録、ログインできる。| aaa |
| 3 | 店舗管理機能 | deviceを用いたユーザー管理機能 | トップページの下のボタンで新規登録、ログインできる。| aaa |
| 3 | 店舗情報登録機能 | 登録内容には、店名や特定の場所を指定した複数枚画像など３０項目を登録してもらう。 | 新規登録後、トップページの右上のボタンから登録することができる。登録後は、登録ボタンがマイページボタンになる。| aaa |
| 3 | 店舗情報編集機能 | 登録した店舗情報を編集できるようにするため | 自身の店舗情報詳細ページの下記のボタンから編集することができる|
| 3 | 店舗情報削除機能 | 登録した店舗情報を削除できるようにするため | 自身の店舗情報詳細ページの下記のボタンから削除することができる|
| 3 | 店舗情報検索機能 | 店舗情報を検索できるようにするため | トップページまたは検索結果一覧ページからキーワード検索、予算の範囲検索、それ以外のラジオボタン検索で好みの店舗を検索することができる|
| 3 | 店舗予約機能 | 店舗を予約できるようにするため | 店舗詳細ページのカレンダーから希望の日時を選択肢予約することができる。|
| 3 | 店舗予約編集機能 | 店舗が予約を取り消すため | 自身の店舗詳細ページのカレンダーから希望の日時を選択肢予約することができる。|
| 3 | 店舗予約削除機能 | ユーザーが予約を取り消すため | マイページの予約一覧から削除できる|
| 3 | 電子領収書機能機能 | 電子領収書を作成するため | 店舗の予約一覧から領収書を発行でき、作成後ユーザーから承認があれば確定領収書を作成できる|
| ２ | ユーザー投稿機能 | よかったお店の投稿ができる | ユーザーはトップページからよかったお店を投稿し簡単に共有することができる|
| ２ | ユーザー投稿編集機能 | 投稿の編集ができる | 自身の投稿詳細ページから投稿を編集することができる。|
| ２ | ユーザー投稿削除機能 | 投稿の削除ができる | 自身の投稿詳細ページから投稿を削除することができる。|
<br>

# 追加実装予定
| 機能 | 目的 | 
-|-|
| タグ検索機能（ユーザーの投稿と店舗詳細ページの紐付け） | 店舗ではなく、一般のユーザーの声がお店を選ぶ上で信用度が高いため |
| お店の評価機能（レーダーチャート） | 店舗の評価をより詳細にすることで、一般ユーザーの細かいニーズからお店を探せるようにするため |
| クレジット決済機能 | 電子領収書は、よりセキュリティ面で現実的ではないために、クレジットカードのAPIを使用しセキュリティ面を担保するため。まだ実現ができればウォレットレスに対応できるため |
| 既存の予約管理システムとの連結機能 | 複数の予約アプリを導入している店舗も多いと予想されるために実現性を上げるためには、他のサービスとの連結をしなければならないため |

<br>

# ER図
[![Image from Gyazo](https://i.gyazo.com/299afa806c44ceb757176d9af1920436.jpg)](https://gyazo.com/299afa806c44ceb757176d9af1920436)



# テーブル設計


## users テーブル

| Column             | Type    | Options                            |
| ------------------ | ------- | ---------------------------------- |
| nickname           | string  | null: false                        |
| last_name          | string  | null: false                        |
| first_name         | string  | null: false                        |
| email              | string  | null: false,unique:true            |
| password           | string  | null: false                        |
| encrypted_password | string  | null: false                        |
| birthday           | date    | null: false                        |
| tel                | string  | null: false                        |
| postal_code        | string  | null: false                        |
| prefecture_id      | integer | null: false                        |
| city               | string  | null: false                        |
| address            | string  | null: false                        |
| building           | string  |                                    |

### Association

- has_many :tweets
- has_many :reservations
- has_many :receipts

## store テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| store_name         | string     | null: false                    |
| postal_code        | string     | null: false                    |
| prefecture_id      | integer    | null: false                    |
| city               | string     | null: false                    |
| address            | string     | null: false                    |
| building           | string     |                                |
| tel                | string     | null: false                    |
| director           | string     | null: false                    |
| email              | string     | null: false,unique:true        |
| password           | string     | null: false                    |

### Association

- has_one  :information

## informations テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| store_name         | string     | null: false                    |
| postal_code        | string     | null: false                    |
| prefecture_id      | integer    | null: false                    |
| city               | string     | null: false                    |
| address            | string     | null: false                    |
| building           | string     |                                |
| tel                | string     | null: false                    |
| food               | string     | null: false                    |
| seet               | integer    | null: false                    |
| transportation     | string     | null: false                    |
| explanation        | text       | null: false                    |
| opening_time       | time       | null: false                    |
| closing_time       | time       | null: false                    |
| place_id           | integer    | null: false                    |
| genre_id           | integer    | null: false                    |
| light_id           | integer    | null: false                    |
| volume_id          | integer    | null: false                    |
| budget_id          | integer    | null: false                    |
| tobacco_id         | integer    | null: false                    |
| holiday_id         | integer    | null: false                    |
| booking_id         | integer    | null: false                    |
| parking_id         | integer    | null: false                    |
| reception_id       | integer    | null: false                    |
| store              | references | null: false, foreign_key: true |

### Association

- belongs_to :store
- has_one_attached :image
- has_many_attached :image_foods
- has_many_attached :image_appearances
- has_many_attached :image_introspections
- has_many_attached :image_entrances
- has_many_attached :image_seats
- has_many_attached :image_views
- has_many_attached :image_toilets
- belongs_to :genre
- belongs_to :booking
- belongs_to :light
- belongs_to :reception
- belongs_to :tobacco
- belongs_to :budget
- belongs_to :volume
- belongs_to :parking
- belongs_to :place
- belongs_to :holiday
- has_many :reservations
- has_many :information_musics
- has_many :musics, through: :information_musics
- has_many :information_payments
- has_many :payments, through: :information_payments
- has_many :information_locations
- has_many :locations, through: :information_locations
- has_many :information_drinks
- has_many :drinks, through: :information_drinks
- has_many :information_services
- has_many :services, through: :information_services
- has_many :information_ages
- has_many :ages, through: :information_ages
- has_many :information_rooms
- has_many :rooms, through: :information_rooms
- has_many :information_spaces
- has_many :spaces, through: :information_spaces
- has_many :receipts

## genres テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| ancestry    | integer    | null: false                    |

### Association
- has_many :informations
- has_ancestry

## genres テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| ancestry    | integer    | null: false                    |

### Association
- has_many :informations
- has_ancestry

## ages テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |

### Association
- has_many :information_ages
- has_many :informations, through: :information_ages

## information_ages テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| information | references | null: false, foreign_key: true |
| age         | references | null: false, foreign_key: true |

### Association
- belongs_to :information
- belongs_to :age

## drinks テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |

### Association
- has_many :information_drinks
- has_many :informations, through: :information_drinks

## information_drinks テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| information | references | null: false, foreign_key: true |
| drink       | references | null: false, foreign_key: true |

### Association
- belongs_to :information
- belongs_to :drink

## locations テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |

### Association
- has_many :information_locations
- has_many :informations, through: :information_locations

## information_locations テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| information | references | null: false, foreign_key: true |
| location    | references | null: false, foreign_key: true |

### Association
- belongs_to :information
- belongs_to :location

## musics テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |

### Association
- has_many :information_musics
- has_many :informations, through: :information_musics

## information_musics テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| information | references | null: false, foreign_key: true |
| music       | references | null: false, foreign_key: true |

### Association
- belongs_to :information
- belongs_to :music

## payments テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |

### Association
- has_many :information_payments
- has_many :informations, through: :information_payments

## information_payments テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| information | references | null: false, foreign_key: true |
| payment     | references | null: false, foreign_key: true |

### Association
- belongs_to :information
- belongs_to :payment

## rooms テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |

### Association
- has_many :information_rooms
- has_many :informations, through: :information_rooms

## information_rooms テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| information | references | null: false, foreign_key: true |
| room        | references | null: false, foreign_key: true |

### Association
- belongs_to :information
- belongs_to :room

## services テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |

### Association
- has_many :information_services
- has_many :informations, through: :information_services

## information_services テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| information | references | null: false, foreign_key: true |
| service     | references | null: false, foreign_key: true |

### Association
- belongs_to :information
- belongs_to :service

## spaces テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |

### Association
- has_many :information_spaces
- has_many :informations, through: :information_spaces

## information_spaces テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| information | references | null: false, foreign_key: true |
| space       | references | null: false, foreign_key: true |

### Association
- belongs_to :information
- belongs_to :space

## reservations テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| number_of_people | integer    | null: false                    |
| tel              | string     | null: false                    |
| start_time       | datetime   |                                |
| user             | references | null: false, foreign_key: true |
| information      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :information
- has_one :receipt


## receipts テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| price       | string     | null: false                    |
| name        | string     | null: false                    |
| proviso     | string     | null: false                    |
| consent     | boolean    |                                |
| user        | references | null: false, foreign_key: true |
| reservation | references | null: false, foreign_key: true |

### Association

- belongs_to :reservation
- belongs_to :user

## tweets テーブル

| Column       | Type       | Options                        |
| -------------| ---------- | ------------------------------ |
| title        | string     | null: false                    |
| text         | string     | null: false                    |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user

