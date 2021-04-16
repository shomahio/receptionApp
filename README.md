# アプリケーション概要
**ビジネスシーンに特化した飲食店予約アプリです。**<br>
従来の飲食店予約アプリ同様、飲食店の検索、予約、マイページ機能に加えて**店舗の雰囲気検索機能**、**予約可能時間の自動作成機能**、**電子領収書作成機能**を実装し、ビジネスマンの接待や簡単な食事の際に重要なお店選びに使えるアプリです。
[![Image from Gyazo](https://i.gyazo.com/3740fc5847af8c630451930deb72b5ee.jpg)](https://gyazo.com/3740fc5847af8c630451930deb72b5ee)

# 本番環境のURL
http://3.114.114.184/

# テスト用アカウント

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
[![Image from Gyazo](https://i.gyazo.com/805f40f63df3380a85e406c7a77b449c.gif)](https://gyazo.com/805f40f63df3380a85e406c7a77b449c)
[![Image from Gyazo](https://i.gyazo.com/5a384e1033994e9f88006d0a46972fb6.gif)](https://gyazo.com/5a384e1033994e9f88006d0a46972fb6)

* * *  
## 店舗情報登録機能（ancestry,Ajax）
飲食店は店舗の情報を登録することができます。<br>
店舗は登録に付き１つの店舗情報しか登録できないために店舗情報登録後、マイページに遷移します。<br>
<a href="https://gyazo.com/f8129dd04d74664a72bc3a23eaf33786"><img src="https://i.gyazo.com/f8129dd04d74664a72bc3a23eaf33786.gif" alt="Image from Gyazo" width="1000"/></a>
* * * 

## 予約可能時間自動作成機能(module)
自作のmoduleにより予約可能時間自動作成機能。<br>
店舗詳細ページを誰かが開く度に、店舗情報の営業開始時間、終了時間から自動的に１時間ごとの予約可能時間を作成することができる。また前日以降のレコードの自動削除機能、一般ユーザー、店舗ユーザーどちらも編集可能です。
予約があれば、マイページの予約一覧から確認可能です。
[![Image from Gyazo](https://i.gyazo.com/7f1b860c11d12e6d20d00723103eeef2.gif)](https://gyazo.com/7f1b860c11d12e6d20d00723103eeef2)

* * * 

## 店舗検索機能(ransack)
ransackを用いた検索機能。<br>
ジャンル、エリアはancestryを用いて階層構造にすることで親と子を紐付けている為、キーワード検索のキーワードは店名、食材、親ジャンル、子ジャンルが検索可能です。エリアは交通手段、都道府県、子エリアから検索可能です。<br>
予算は上限、下限の範囲検索が可能です。<br>
上記以外はラジオボタン検索が可能です。
[![Image from Gyazo](https://i.gyazo.com/0a4adf20a436bc08b23662a226c10a8f.gif)](https://gyazo.com/0a4adf20a436bc08b23662a226c10a8f)
* * * 

## 飲食店予約機能(simple_calender)
moduleにより作成したレコードをsimple_calenderにより表示しています。<br>
予約可能時間があればカレンダーに◎、△を表示しそこから予約ページに遷移でき、情報を送信すれば、飲食店、一般ユーザーの予約一覧に追加され確認することができます。飲食店、一般ユーザーともに削除編集可能です。
また予約が残り一席になればカレンダーには△、埋まれば×になり予約できなくなります。
[![Image from Gyazo](https://i.gyazo.com/4a08bb03b48ddaf40d82a6c4eb92d41a.gif)](https://gyazo.com/4a08bb03b48ddaf40d82a6c4eb92d41a)
* * * 

## 領収書作成機能
一般ユーザーが電子領収書を希望された場合、店舗ユーザーは予約一覧から領収書作成ページに飛び、情報を入力することで作成できます。作成された領収書が正しかったら、ユーザーが承認します。承認された領収書が確定領収書として店舗、一般ユーザーのマイページの領収書一覧に追加されます。領収書がアプリで一元管理できることで、一般ユーザーの領収書管理の負担を軽減できます。
[![Image from Gyazo](https://i.gyazo.com/70c745bc36e757b96d19b10ed0a8be71.gif)](https://gyazo.com/70c745bc36e757b96d19b10ed0a8be71)
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
| 3 | 店舗情報予約機能 | 店舗を予約できるようにするため | 店舗詳細ページのカレンダーから希望の日時を選択肢予約することができる。|



# 追加実装予定


# ER図

# テーブル設計
















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


