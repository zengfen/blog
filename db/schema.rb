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

ActiveRecord::Schema.define(version: 20151201081528) do

  create_table "companies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "pre_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "level",      limit: 4
  end

  create_table "docs", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.string   "content",        limit: 255
    t.integer  "com_id",         limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "comment",        limit: 255
    t.integer  "doc_status",     limit: 4
    t.integer  "publish_time",   limit: 4
    t.integer  "p_user_id",      limit: 4
    t.integer  "examine_status", limit: 4
    t.integer  "e_user_id",      limit: 4
    t.integer  "c_user_id",      limit: 4
    t.string   "examine_time",   limit: 255
    t.string   "p_time",         limit: 255
    t.string   "f_name",         limit: 255
    t.string   "f_url",          limit: 255
  end

  create_table "operationlogs", force: :cascade do |t|
    t.string   "time",       limit: 255
    t.string   "desc",       limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "password",   limit: 255
    t.integer  "com_id",     limit: 4
    t.string   "type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "user_type",  limit: 255
  end

  create_table "wikis", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.string   "label",       limit: 255
    t.string   "publisher",   limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
