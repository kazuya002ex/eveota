# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_15_033138) do

  create_table "events", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.time "start_time", null: false, comment: "開演時間"
    t.time "opening_time", null: false, comment: "開場時間"
    t.date "performance_date", null: false, comment: "公演日"
    t.bigint "venue_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_events_on_name", unique: true
    t.index ["performance_date"], name: "index_events_on_performance_date"
    t.index ["user_id"], name: "index_events_on_user_id"
    t.index ["venue_id"], name: "index_events_on_venue_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "venues", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false, comment: "会場名"
    t.string "station", null: false, comment: "最寄り駅名"
    t.string "location", null: false, comment: "会場の住所"
    t.integer "walk", limit: 3, null: false, comment: "徒歩時間"
    t.float "latitude", null: false, comment: "緯度"
    t.float "longitude", null: false, comment: "経度"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "access_info"
  end

  add_foreign_key "events", "users"
  add_foreign_key "events", "venues"
end
