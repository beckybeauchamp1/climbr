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

ActiveRecord::Schema.define(version: 20160318175402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

  create_table "routes", force: :cascade do |t|
    t.string  "title"
    t.string  "difficulty"
    t.string  "setter"
    t.string  "set_date"
    t.integer "gym_id"
  end

  add_index "routes", ["gym_id"], name: "index_routes_on_gym_id", using: :btree

  add_foreign_key "routes", "gyms"
end
