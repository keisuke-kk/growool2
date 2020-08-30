# Growool
このアプリケーションは、仕事や勉学に対するモチベーションの向上と情報の共有を目的としたものです！<br>
人並み外れた努力をする際、そこには大きなストレスが伴います。<br>
そういった時、Growoolは荒波の中でのアンカーとしての役割を果たします！

# 概要
___shops___<br>
&emsp;&emsp;勉強に最適なカフェ等を紹介します。<br>
___study_tips___<br>
&emsp;&emsp;効率的な学習方法や取り組み方を紹介します。<br>
___messages___<br>
&emsp;&emsp;ユーザーの気づいたことなどを投稿する掲示板です。

# 本番環境
http://54.248.135.239/

# 制作背景
私は、現代が自己投資を不可欠とする時代にあると考えています。<br>
チャールズ・ダーウィンは変化できる者が唯一生き残ることができると述べています。<br>
勉強という自己投資は変化に対応することのできる有効な手段の１つです。<br>
激変する現代社会で、ユーザーの自己投資をサポートすることができれば幸いです。

# DEMO


# 工夫したポイント
___比較的新しい技術に挑戦したこと___<br>
&emsp;&emsp;&emsp;AWS<br>
&emsp;&emsp;&emsp;Docker<br>
&emsp;&emsp;&emsp;CircleCI<br>
&emsp;&emsp;&emsp;Vue.js<br>
&emsp;<br>
___管理者とユーザーで権限を分けたこと___<br>
- 管理者<br>
    - shopsにおけるCRUD<br>
    - study_tipsにおけるCRUD<br>
    - messagesにおける投稿および削除<br>
- ユーザー<br>
    - messagesにおける投稿のみ<br>

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
