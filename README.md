# アプリ名
販売代行明細作成アプリ

# 概要
既存の販売管理システムよりデータを抽出し、インポートすることにより、
各店舗、販売代行会社への支払明細書を作成ができます。

# 本番環境
http://54.95.141.25/

# 制作背景(意図)
エクセルで各店舗、販売代行会社を管理していたため、管理しやすくする
また販売代行会社自身で確認できる

# DEMO(gifで動画や写真)

# 使用技術(開発環境)
rails

# 課題や今後実装したい機能
PDFファイルに出力、売上以外の計上の記載

# DB設計

## companiseテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|-|
|person|string|-|
|post|string|-|
|address1|string|-|
|address2|string|-|
|tel1|string|-|
|tel2|string|-|
|fax|string|-|
|mail|string|-|
|post_adress|string|-|

### Association
- has_many :shops

## salesテーブル

|Column|Type|Options|
|------|----|-------|
|shop_id|string|foreign_key: true|
|rate|integer|-|

### Association
- belongs_to :shop

## shopsテーブル

|Column|Type|Options|
|------|----|-------|
|shop_id|string|primary_key: true|
|name|string|-|
|rate|integer|-|

### Association
- has_many :sales
- belongs_to :company