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

ActiveRecord::Schema.define(version: 2018_12_22_201435) do

  create_table "accounts", force: :cascade do |t|
    t.string "account_num"
    t.integer "buyer_id"
    t.integer "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_accounts_on_buyer_id"
    t.index ["vendor_id"], name: "index_accounts_on_vendor_id"
  end

  create_table "buyers", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "name"
    t.string "address_st"
    t.string "city"
    t.integer "zipcode"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "main_cat"
    t.string "sub_cat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_products", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_products_on_order_id"
    t.index ["product_id"], name: "index_order_products_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "order_date"
    t.date "delivery_date"
    t.integer "buyer_id"
    t.integer "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_orders_on_buyer_id"
    t.index ["vendor_id"], name: "index_orders_on_vendor_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "barcode"
    t.string "name"
    t.string "size"
    t.string "img_url"
    t.integer "case_pack"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "vendor_products", force: :cascade do |t|
    t.string "v_item"
    t.float "case_price"
    t.integer "inventory"
    t.integer "product_id"
    t.integer "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "exp_date"
    t.index ["product_id"], name: "index_vendor_products_on_product_id"
    t.index ["vendor_id"], name: "index_vendor_products_on_vendor_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "name"
    t.string "address_st"
    t.string "city"
    t.integer "zipcode"
    t.string "phone"
    t.boolean "has_min"
    t.float "min_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
