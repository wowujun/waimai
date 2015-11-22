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

ActiveRecord::Schema.define(version: 20151122092408) do

  create_table "admins", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "loginname",       limit: 255
    t.string   "password_digest", limit: 255
    t.integer  "status",          limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "advertisements", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "renderto",   limit: 255
    t.string   "image",      limit: 255
    t.integer  "status",     limit: 4
    t.datetime "startdate"
    t.datetime "enddate"
    t.datetime "starttime"
    t.datetime "endtime"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "clas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "couriers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "weichat_id", limit: 255
    t.integer  "status",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "weichat_id", limit: 255
    t.string   "tel",        limit: 255
    t.string   "address",    limit: 255
    t.string   "location",   limit: 255
    t.integer  "balance",    limit: 4
    t.integer  "integral",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "diliverymen", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "weichat_id", limit: 255
    t.integer  "status",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "indent_details", force: :cascade do |t|
    t.string   "indent_id",  limit: 255
    t.string   "product_id", limit: 255
    t.string   "name",       limit: 255
    t.integer  "num",        limit: 4
    t.string   "price",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "indents", force: :cascade do |t|
    t.string   "customer_id",    limit: 255
    t.string   "diliveryman_id", limit: 255
    t.string   "number",         limit: 255
    t.integer  "status",         limit: 4
    t.integer  "orderstatus",    limit: 4
    t.string   "sum",            limit: 255
    t.datetime "bltime"
    t.datetime "finishtime"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "productclas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "unit_id",       limit: 255
    t.string   "productcla_id", limit: 255
    t.string   "seller_id",     limit: 255
    t.string   "name",          limit: 255
    t.string   "image",         limit: 255
    t.string   "costprice",     limit: 255
    t.string   "currentprice",  limit: 255
    t.integer  "num",           limit: 4
    t.integer  "status",        limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "selleradmins", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "loginname",       limit: 255
    t.string   "password_digest", limit: 255
    t.integer  "status",          limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "summary",         limit: 255
    t.string   "tel",             limit: 255
    t.string   "address",         limit: 255
    t.string   "logo",            limit: 255
    t.string   "hint",            limit: 255
    t.string   "location",        limit: 255
    t.integer  "status",          limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "loginname",       limit: 255
    t.string   "password_digest", limit: 255
    t.string   "cla_id",          limit: 255
  end

  create_table "units", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
