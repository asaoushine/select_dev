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

ActiveRecord::Schema.define(version: 20150501111737) do

  create_table "drivers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histories", force: true do |t|
    t.integer  "user_id"
    t.integer  "driver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "histories", ["driver_id"], name: "index_histories_on_driver_id", using: :btree
  add_index "histories", ["user_id"], name: "index_histories_on_user_id", using: :btree

  create_table "keywords", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "person_keywords", force: true do |t|
    t.integer  "person_id"
    t.integer  "keyword_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "person_keywords", ["keyword_id"], name: "index_person_keywords_on_keyword_id", using: :btree
  add_index "person_keywords", ["person_id"], name: "index_person_keywords_on_person_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "great_grandparent_name"
    t.string   "grandparent_name"
    t.string   "parent_name"
    t.string   "name"
    t.integer  "layer"
    t.string   "tag_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
