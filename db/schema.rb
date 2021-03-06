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

ActiveRecord::Schema.define(version: 20151215070655) do

  create_table "banners", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "purchased_at"
    t.integer  "sticker_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "order_id",     limit: 4
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "phone",      limit: 255
    t.string   "email",      limit: 255
    t.text     "message",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer  "sticker_id",         limit: 4
    t.integer  "banner_id",          limit: 4
    t.integer  "category_id",        limit: 4
    t.integer  "imagable_id",        limit: 4
    t.string   "imagable_type",      limit: 255
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "lineitems", force: :cascade do |t|
    t.integer  "sticker_id", limit: 4
    t.integer  "cart_id",    limit: 4
    t.decimal  "unit_price",           precision: 7, scale: 2
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.integer  "quantity",   limit: 4,                         default: 1
    t.integer  "order_id",   limit: 4
  end

  add_index "lineitems", ["order_id"], name: "fk_rails_c468018124", using: :btree

  create_table "orders", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "attachment",    limit: 255
    t.string   "phone",         limit: 255
    t.text     "address",       limit: 65535
    t.string   "zip",           limit: 255
    t.string   "vehicle_no",    limit: 255
    t.string   "vehicle_model", limit: 255
    t.string   "vehicle_make",  limit: 255
    t.string   "email",         limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "stickers", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.decimal  "price",                     precision: 10
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.integer  "category_id", limit: 4
    t.integer  "user_id",     limit: 4
    t.integer  "quantity",    limit: 4,                    default: 1
    t.string   "status",      limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,     default: 0
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.string   "authentication_token",   limit: 255
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "username",               limit: 255
    t.string   "gender_type_list",       limit: 255
    t.string   "name",                   limit: 255
    t.string   "role",                   limit: 255
    t.text     "address",                limit: 65535
    t.string   "city",                   limit: 255
    t.string   "phone",                  limit: 255
    t.date     "date_of_birth"
    t.string   "no",                     limit: 255
    t.string   "active",                 limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "lineitems", "orders"
end
