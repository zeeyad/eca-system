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

ActiveRecord::Schema.define(version: 20180112072937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "club_id"
    t.bigint "semester_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_activities_on_club_id"
    t.index ["semester_id"], name: "index_activities_on_semester_id"
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "attendances", force: :cascade do |t|
    t.bigint "activity_id"
    t.bigint "student_id"
    t.boolean "attend"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_attendances_on_activity_id"
    t.index ["student_id"], name: "index_attendances_on_student_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.bigint "semester_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_id"], name: "index_clubs_on_semester_id"
    t.index ["user_id"], name: "index_clubs_on_user_id"
  end

  create_table "members", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_members_on_club_id"
    t.index ["student_id"], name: "index_members_on_student_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.string "session"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status", default: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "student_reg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "username"
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "clubs"
  add_foreign_key "activities", "semesters"
  add_foreign_key "activities", "users"
  add_foreign_key "attendances", "activities"
  add_foreign_key "attendances", "students"
  add_foreign_key "clubs", "semesters"
  add_foreign_key "clubs", "users"
  add_foreign_key "members", "clubs"
  add_foreign_key "members", "students"
  add_foreign_key "students", "users"
end
