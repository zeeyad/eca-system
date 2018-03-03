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

ActiveRecord::Schema.define(version: 20180303145050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "no_of_hours"
    t.integer "weightage"
    t.integer "dev_aspect"
    t.integer "week_no"
    t.date "date"
    t.string "venue"
    t.text "description"
    t.time "time"
    t.integer "status", default: 0
    t.index ["club_id"], name: "index_activities_on_club_id"
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "activity_plans", force: :cascade do |t|
    t.bigint "club_id"
    t.string "name"
    t.integer "dev_aspect"
    t.integer "no_of_hours"
    t.integer "weightage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_activity_plans_on_club_id"
  end

  create_table "attendances", force: :cascade do |t|
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.bigint "member_id"
    t.index ["activity_id"], name: "index_attendances_on_activity_id"
    t.index ["member_id"], name: "index_attendances_on_member_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.bigint "semester_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "about"
    t.text "objective"
    t.text "member_benefit"
    t.text "community_benefit"
    t.string "usual_day"
    t.string "usual_venue"
    t.string "hours_per_week"
    t.string "phs_activity"
    t.integer "phs_hours"
    t.integer "phs_weightage"
    t.string "culture_activity"
    t.integer "culture_hours"
    t.integer "culture_weightage"
    t.string "spiritual_activity"
    t.integer "spiritual_hours"
    t.integer "spiritual_weightage"
    t.string "social_activity"
    t.integer "social_hours"
    t.integer "social_weightage"
    t.string "mental_activity"
    t.integer "mental_hours"
    t.integer "mental_weightage"
    t.index ["semester_id"], name: "index_clubs_on_semester_id"
    t.index ["user_id"], name: "index_clubs_on_user_id"
  end

  create_table "members", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "club_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "position"
    t.string "student_reg"
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
    t.integer "points"
    t.string "degree"
    t.string "faculty"
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
  add_foreign_key "activities", "users"
  add_foreign_key "activity_plans", "clubs"
  add_foreign_key "attendances", "activities"
  add_foreign_key "attendances", "members"
  add_foreign_key "clubs", "semesters"
  add_foreign_key "clubs", "users"
  add_foreign_key "members", "clubs"
  add_foreign_key "members", "students"
  add_foreign_key "students", "users"
end
