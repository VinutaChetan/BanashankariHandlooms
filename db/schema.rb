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

ActiveRecord::Schema.define(version: 20171220082849) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_details", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.float    "advance_payment"
    t.date     "date_of_joining"
    t.float    "remaining_balance"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "employee_payments", force: :cascade do |t|
    t.integer  "employee_details_id"
    t.date     "date_of_payment"
    t.float    "amount"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "sales_reports", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "sub_category_id"
    t.string   "customer_name"
    t.integer  "no_of_sarees"
    t.float    "amount"
    t.float    "total_amount"
    t.float    "paid"
    t.float    "balance"
    t.text     "details"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.date     "date_of_paid"
  end

  create_table "stock_reports", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "sub_category_id"
    t.integer  "no_of_stock"
    t.string   "colors"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.integer  "no_of_stock"
    t.integer  "stock_required"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
