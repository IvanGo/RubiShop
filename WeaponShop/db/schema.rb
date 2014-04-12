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

ActiveRecord::Schema.define(version: 20140412162106) do

  create_table "bows", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.float    "tension_force"
    t.float    "lenght"
    t.float    "tensionlenght"
    t.float    "arrow_start_speed"
    t.float    "weight"
    t.float    "bow_base"
    t.string   "producer"
    t.integer  "bowtype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "price"
    t.string   "mainphoto"
    t.string   "mainphoto_file_name"
    t.string   "mainphoto_content_type"
    t.integer  "mainphoto_file_size"
  end

  create_table "bowtypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crossbows", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.float    "tension_force"
    t.float    "stroke_bowstring"
    t.float    "shoulders_lenght"
    t.float    "arrow_start_speed"
    t.float    "weight"
    t.string   "dimensions"
    t.float    "bolt_lenght"
    t.string   "producer"
    t.integer  "crossbowtype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "price"
    t.string   "mainphoto"
    t.string   "mainphoto_file_name"
    t.string   "mainphoto_content_type"
    t.integer  "mainphoto_file_size"
  end

  create_table "crossbowtypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", force: true do |t|
    t.integer  "bow_id"
    t.integer  "crossbow_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_reitings", force: true do |t|
    t.integer  "bow_id"
    t.integer  "crossbow_id"
    t.integer  "user_id"
    t.integer  "raiting"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "viewscounts", force: true do |t|
    t.integer  "bow_id"
    t.integer  "crossbow_id"
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
