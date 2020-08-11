# Growool



# 概要




# 本番環境




# 制作背景




# DEMO




# 工夫したポイント




# 実装機能
- admins
   - ログイン機能
   - ログアウト機能
   - フラッシュメッセージ機能
   - shops,study-tips,messagesへの権限
- users
   - ログイン機能
   - ログアウト機能
   - フラッシュメッセージ機能
   - messagesへの権限
- shops
   - 新規作成機能
   - 編集機能
   - 削除機能
   - 検索機能
   - ページネーション機能
   - 画像複数投稿機能
- study_tips
   - 新規作成機能
   - 編集機能
   - 削除機能
   - 検索機能
   - ページネーション機能
- messages
   - 新規作成機能
   - 削除機能

# 使用技術(開発環境)
- AWS
- CircleCI
- Docker
- github
- ruby
- ruby on rails
- html haml
- scss
- Vue.js



# 課題や今後実装したい機能





# DB設計

## adminsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, default: ""|
|password|string|null: false, default: ""|
### Association
- has_many :shops
- has_many :study_tips
- has_many :messages

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, default: ""|
|email|string|null: false, unique: true, default: ""|
|password|string|null: false, default: ""|
### Association
- has_many :messages


## shopsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|detail|text|null: false|
|aicon_image|text|limit: 4294967295|
|tel|string||
|address|string||
|url|string||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :admin
- has_many :shop_images

## shop_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|null: false, limit: 4294967295|
|shop_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :shop

## study_tipsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|detail|text|null: false|
|image|text|limit: 4294967295|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :admin

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|text|limit: 4294967295|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :admin
- belongs_to :user
