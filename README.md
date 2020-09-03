# Growool
このアプリケーションは、仕事や勉学に対するモチベーションの向上と情報の共有を目的としたものです！<br>
<img src="https://user-images.githubusercontent.com/60077451/91671213-b9368580-eb5f-11ea-9fde-26d9255e1d61.png">


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
   - shops,study-tips,messagesへの権限
- users
   - ログイン機能
   - ログアウト機能
   - messagesへの権限(新規作成機能のみ）
- shops
   - 新規作成機能
   - 編集機能
   - 削除機能
   - 詳細表示機能
- study_tips
   - 新規作成機能
   - 編集機能
   - 削除機能
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
- html
- scss
- Vue.js
- rspec

# 課題や今後実装したい機能
&emsp;&emsp;今回は、主に"未知の技術の導入"を意識して開発に取り組みました。<br>
&emsp;&emsp;その結果、エラーや周辺知識の習得などの想定外の事態が多発し、計画以上に時間を要したことが反省点に<br>
&emsp;&emsp;あげられます。<br>
&emsp;&emsp;以上の反省から、未知のエンティティについては、想定される期間の2倍の時間を計画に組み込むよう心がけ<br>
&emsp;&emsp;たい思っております。<br>
&emsp;&emsp;今後実装したい機能としては、今回アプリケーションに導入したdockerについて理解を深め、コンテナーオー<br>
&emsp;&emsp;ケストレーションなどの実践的な運用に取り組みたいです。<br>
&emsp;&emsp;また、SPAなど、フロントエンドにおいてもよりモダンな技術を利用したいと思っております。<br>

# DB設計

## adminsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, default: ""|
|password|string|null: false, default: ""|

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, default: ""|
|email|string|null: false, unique: true, default: ""|
|password|string|null: false, default: ""|

## shopsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|detail|text|null: false|
|aicon_image|text|limit: 4294967295|
|tel|string||
|address|string||
|url|string||

## study_tipsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|detail|text|null: false|
|image|text|limit: 4294967295|

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
