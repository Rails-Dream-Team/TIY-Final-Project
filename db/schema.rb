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

ActiveRecord::Schema.define(version: 20150818152644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colonies", force: :cascade do |t|
    t.string   "name",           null: false
    t.string   "photo"
    t.string   "street_address", null: false
    t.string   "city",           null: false
    t.string   "state",          null: false
    t.string   "zip_code"
    t.string   "enviroment"
    t.integer  "pop"
    t.string   "vet"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "colony_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "colony_id"
    t.boolean  "owner"
    t.boolean  "volunteer"
    t.boolean  "care_taker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "colony_users", ["user_id", "colony_id"], name: "index_colony_users_on_user_id_and_colony_id", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.string   "display_name",                        null: false
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.integer  "age"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["display_name"], name: "index_users_on_display_name", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end