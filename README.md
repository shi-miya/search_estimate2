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
|name|string|null: false| [](案件名)
|author|string|null: false|
|expiration_date|string|
|note|text||
|employee|string||
|author|string|null: false|
|user_id|integer|foreign_key: true|
|company_id|integer|foreign_key: true|
### Association
- belongs_to :user
- belongs_to :company
- has_many :items through estimates
- has_many :estimates

## company
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|person|string||
### Association
- has_many :proposals

## estimate
|Column|Type|Options|
|------|----|-------|
|trade_price|integer|null: false|
|total_price|integer|null: false|
|rate|integer|
|note|text|
|proposal_id|integer|null: false,foreign_key: true|
|item_id|integer|null: false,foreign_key: true|
### Association
- belongs_to :proposal
- belongs_to :item

## item
|Column|Type|Options|
|------|----|-------|
|code|integer|null: false|
|maker|string|null: false|
|name|text|null: false|
|product_number|string|null: false|
|retail_price|integer||
|cost|integer|null: false|
|cost_rate|integer|
|total_cost|integer|null: false|
|amount|integer|null: false|
|note|text|
### Association
- has_many :proposal through estimates
- has_many :estimates
