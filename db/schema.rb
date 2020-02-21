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

ActiveRecord::Schema.define(version: 2020_02_14_172153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "all_outputs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entrances", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inputs", force: :cascade do |t|
    t.text "title"
    t.text "content"
    t.text "image"
    t.integer "lesson_id"
    t.integer "user_id"
    t.integer "input_or_output"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.integer "bd_les_sub"
    t.integer "k_or_o"
    t.integer "lesson_no"
    t.string "title"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "slack", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "period", null: false
    t.string "team", default: "", null: false
    t.integer "output_times", default: 0
    t.integer "rank"
    t.integer "on_off", default: 0
    t.integer "night_short", default: 0
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
