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

ActiveRecord::Schema.define(version: 20180403172122) do

  create_table "accounts", force: :cascade do |t|
    t.string "customer_name"
    t.float "total_amount"
    t.float "amount_paid"
    t.float "amount_due"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "full_name"
    t.text "address"
    t.string "phn_num"
    t.text "email"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phn_num"
    t.text "address"
    t.text "email"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "make"
    t.string "model"
    t.string "serial_num"
    t.string "mfd"
    t.string "vendor"
    t.integer "purchase_price"
    t.string "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_date"
    t.string "duration"
    t.string "equipment"
  end

end
