# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_31_084817) do

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "code", null: false
    t.string "name", null: false
    t.string "person_in_charge"
    t.string "employee", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estimates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "author", null: false
    t.string "expiration_date"
    t.string "payment_terms"
    t.integer "trade_price", null: false
    t.integer "total_price", null: false
    t.integer "note"
    t.integer "amount", null: false
    t.integer "profit_rate", null: false
    t.integer "cost_rate", null: false
    t.integer "total_profit", null: false
    t.bigint "user_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "a_profit"
    t.integer "trade_price_rate"
    t.index ["company_id"], name: "index_estimates_on_company_id"
    t.index ["user_id"], name: "index_estimates_on_user_id"
  end

  create_table "estimates_items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "estimate_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estimate_id"], name: "index_estimates_items_on_estimate_id"
    t.index ["item_id"], name: "index_estimates_items_on_item_id"
  end

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "code", null: false
    t.string "maker", null: false
    t.string "maker_code"
    t.text "name", null: false
    t.string "product_number", null: false
    t.integer "retail_price"
    t.integer "cost", null: false
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "estimates", "companies"
  add_foreign_key "estimates", "users"
  add_foreign_key "estimates_items", "estimates"
  add_foreign_key "estimates_items", "items"
end
