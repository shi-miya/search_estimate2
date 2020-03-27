# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# search_estimate2 DB設計

## user
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|password confirmation|string|null: false|
### Association
- has_many :estimates

## estimate
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|            [](1.案件名)
|author|string|null: false|          [](2.作成者)
|expiration_date|string||            [](3.見積有効期限)
|payment_terms|string||              [](4.支払条件)
|trade_price|integer|null: false|    [](5.卸価格)
|total_price|integer|null: false|    [](6.卸価格合計)
|total_cost|integer|null: false|     [](7.原価合計)
|note|text||                         [](8.備考)
|amount|integer|null: false|         [](9.量)
|profit_rate|integer|null: false|    [](10.粗利率)
|cost_rate|integer|null: false|      [](11.原価率)
|total_profit|integer|null: false|   [](12.粗利合計)
|user_id|integer|foreign_key: true|
|company_id|integer|foreign_key: true|
### Association
- belongs_to :user
- belongs_to :company
- has_many :items through estimates_items
- has_many :estimates_items

## company
|Column|Type|Options|
|------|----|-------|
|code|integer|null: false|           [](1.店コード)
|name|string|null: false|            [](2.販売店名)
|Person_in_charge|string||           [](3.担当者)
|employee|string|null: false|        [](4.担当営業)
### Association
- has_many :estimates

## estimate_item
|Column|Type|Options|
|------|----|-------|
|estimate_id|integer|null: false,foreign_key: true|
|item_id|integer|null: false,foreign_key: true|
### Association
- belongs_to :estimate
- belongs_to :item

## item
|Column|Type|Options|
|------|----|-------|
|code|integer|null: false|          [](1.注文コード)
|maker|string|null: false|          [](2.メーカー名)
|maker_code|string||                [](3.メーカーコード)
|name|text|null: false|             [](4.品名)
|product_number|string|null: false| [](5.品番)
|retail_price|integer||             [](6.定価)
|cost|integer|null: false|          [](7.原価)
|note|text||                        [](8.備考)
### Association
- has_many :estimates through estimates_items 
- has_many :estimates_items
