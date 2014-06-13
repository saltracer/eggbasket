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

ActiveRecord::Schema.define(version: 20140613221808) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "egg_baskets", force: true do |t|
    t.decimal  "egg_count"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "collected_on"
  end

  add_index "egg_baskets", ["user_id"], name: "index_egg_baskets_on_user_id", using: :btree

  create_table "egg_clutches", force: true do |t|
    t.decimal  "count"
    t.integer  "egg_basket_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "collected_on"
  end

  add_index "egg_clutches", ["egg_basket_id"], name: "index_egg_clutches_on_egg_basket_id", using: :btree

  create_table "event_names", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.date     "occurred_on"
    t.integer  "egg_basket_id"
    t.float    "cost"
    t.integer  "event_name_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["egg_basket_id"], name: "index_events_on_egg_basket_id", using: :btree
  add_index "events", ["event_name_id"], name: "index_events_on_event_name_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "login"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
