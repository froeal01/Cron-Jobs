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

ActiveRecord::Schema.define(version: 20140428002017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "hourly_revenues", force: true do |t|
    t.integer  "amount"
    t.datetime "hour"
  end

  create_table "items", force: true do |t|
    t.string  "name"
    t.integer "cost"
    t.text    "description"
    t.string  "avatar"
  end

  create_table "order_items", force: true do |t|
    t.integer "order_id"
    t.integer "item_id"
  end

  create_table "orders", force: true do |t|
    t.string   "delivery_contact",                default: "", null: false
    t.string   "delivery_street",                 default: "", null: false
    t.string   "delivery_city",                   default: "", null: false
    t.string   "delivery_state",                  default: "", null: false
    t.string   "delivery_zip",          limit: 5, default: "", null: false
    t.integer  "total",                           default: 0
    t.string   "stripe_customer_token"
    t.integer  "status",                          default: 0
    t.datetime "completed_at"
  end

  create_table "reviews", force: true do |t|
    t.string  "comment",         default: "", null: false
    t.integer "rating",          default: 0,  null: false
    t.integer "reviewable_id"
    t.string  "reviewable_type"
  end

  create_table "scheduled_jobs", force: true do |t|
    t.string   "job_status"
    t.datetime "completed_at"
    t.string   "job_id"
  end

  create_table "sub_orders", force: true do |t|
    t.integer "quantity", default: 1
    t.integer "cost",     default: 0
    t.integer "item_id"
    t.integer "order_id"
  end

  create_table "subscription_items", force: true do |t|
    t.integer "subscription_id"
    t.integer "items_id"
  end

  create_table "subscriptions", force: true do |t|
    t.string "plan"
    t.text   "description"
  end

  create_table "user_orders", force: true do |t|
    t.integer "user_id"
    t.integer "order_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name",             default: "",    null: false
    t.string   "last_name",              default: "",    null: false
    t.string   "stripe_token"
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
