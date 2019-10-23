muscle-shares
====
日々の筋トレを記録して、みんなで共有しようというアプリです。



## 概要
主な機能は大きく分けて３つ
・自分の筋肉に関する目標を設定する（ダイエットもあり）
・日々の筋トレの記録（何時間、どこを鍛えた）をする。
・同じ目標を設定している人と共有して、互いの励みにする。




## イメージ図

後日記入予定

## URL
Herokuにて後日あげる予定。


## Install
後日追記

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)



# DB設計

## Usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|familyname|string|null: false|
|firstname|string|null: false|
|familyname_kana|string|null: false|
|firstname_kana|string|null: false|
|birthday|date|null: false|
|zip_code|string||
|prefecture_id|reference||
|city|string||
|address_line|string||
|building_name|string||
|phone_number|string|unique: true|
|profile|text||

### Association
- has_many :trainings
- has_many :reviews
- has_many :sns_credentials, dependent: :destroy
- has_many :histories

## Historiesテーブル

|Column|Type|Options|
|------|----|-------|
|time|integer|null: false|
|traday|date|null: false, unique: true|
|detail|string|null: false|
|user_id|reference|null: false, foreign_key: true|
|training_id|reference|null: false, foreign_key: true|


### Association
- belongs_to :user
- belongs_to :training

## Trainingsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string|null: false|
|user_id|reference|null: false, foreign_key: true|
|category_id|reference|null: false, foreign_key: true|
|review_id|reference|null: false, foreign_key: true|
|good_id|reference|null: false, foreign_key: true|


### Association
- belongs_to :user
- belongs_to :category
- has_many :histories
- has_many :reviews
- has_many :goods

## Categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


### Association
- has_many :trainings

## Reviewsテーブル

|Column|Type|Options|
|------|----|-------|
|comment|string|null: false|
|level|integer||
|user_id|reference|null: false, foreign_key: true|
|training_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :training



## Prefecturesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :items

## SnsCredentialsテーブル

|Column|Type|Options|
|------|----|-------|
|uid|string|unique: true|
|provider|string||
|user|integer||

### Association
- belongs_to :user, optional: true