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

ActiveRecord::Schema.define(version: 20150630154310) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "main_classes", force: :cascade do |t|
    t.string   "name",       limit: 50,  default: "",  null: false
    t.string   "sid",        limit: 50,  default: "",  null: false
    t.string   "status",     limit: 1,   default: "0", null: false
    t.string   "url",        limit: 255, default: "",  null: false
    t.string   "desc",       limit: 500, default: ""
    t.string   "pic_url",    limit: 255, default: "",  null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "position",   limit: 1,   default: ""
  end

  add_index "main_classes", ["sid"], name: "index_main_classes_on_sid", unique: true, using: :btree

  create_table "sub_classes", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "sid",             limit: 255
    t.boolean  "status",          limit: 1
    t.string   "url",             limit: 255
    t.string   "pic_url",         limit: 255
    t.string   "desc",            limit: 500
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "main_classes_id", limit: 4
  end

  add_index "sub_classes", ["sid"], name: "index_sub_classes_on_sid", unique: true, using: :btree

end
