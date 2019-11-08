# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_05_002554) do

  create_table "championships", force: :cascade do |t|
    t.integer "country_id"
    t.text "name"
    t.integer "position_in_top"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clubs", force: :cascade do |t|
    t.text "name"
    t.integer "coach_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "championship_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.text "name"
    t.integer "club_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "salary"
  end

  create_table "countries", force: :cascade do |t|
    t.text "name"
    t.text "continent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "position_in_country_table"
    t.integer "championship_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "first_club_id"
    t.integer "second_club_id"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "country_id"
    t.integer "club_id"
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "salary"
  end

  create_table "referees", force: :cascade do |t|
    t.integer "age"
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "salary"
    t.integer "country_id"
  end

  add_foreign_key "championships", "countries"
  add_foreign_key "clubs", "championships"
  add_foreign_key "coaches", "clubs"
  add_foreign_key "matches", "clubs", column: "first_club_id"
  add_foreign_key "matches", "clubs", column: "second_club_id"
  add_foreign_key "players", "clubs"
  add_foreign_key "players", "countries"
  add_foreign_key "referees", "countries"
end
