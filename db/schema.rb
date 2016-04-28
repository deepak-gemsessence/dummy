# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160428071541) do

  create_table "as", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "price",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categorization", id: false, force: :cascade do |t|
    t.integer "demo_id", limit: 4, null: false
    t.integer "sell_id", limit: 4, null: false
  end

  create_table "demos", force: :cascade do |t|
    t.string  "name",    limit: 255
    t.integer "price",   limit: 4
    t.text    "about",   limit: 65535
    t.integer "sell_id", limit: 4
  end

  add_index "demos", ["sell_id"], name: "index_demos_on_sell_id", using: :btree

  create_table "demos_sells", id: false, force: :cascade do |t|
    t.integer "demo_id", limit: 4, null: false
    t.integer "sell_id", limit: 4, null: false
  end

  create_table "distributors", force: :cascade do |t|
    t.string   "zipcode",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "total",      limit: 4
  end

  create_table "news", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "about",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "any",        limit: 255
  end

  create_table "products", force: :cascade do |t|
    t.string "name",    limit: 255
    t.string "address", limit: 255
    t.string "state",   limit: 255
    t.string "country", limit: 255
    t.string "age",     limit: 255
  end

  add_index "products", ["age"], name: "index_products_on_age", using: :btree

  create_table "sells", force: :cascade do |t|
    t.string  "name",           limit: 255, default: "0", null: false
    t.string  "address",        limit: 255
    t.string  "status",         limit: 255
    t.integer "price",          limit: 2,                 null: false
    t.integer "mobile",         limit: 4
    t.string  "hello",          limit: 255
    t.integer "imageable_id",   limit: 4
    t.string  "imageable_type", limit: 255
    t.string  "home_page_url",  limit: 255
  end

  add_index "sells", ["hello"], name: "index_sells_on_hello", using: :btree

  add_foreign_key "demos", "sells"
end
