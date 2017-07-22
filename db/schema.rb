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

ActiveRecord::Schema.define(version: 20170722202849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "students", force: :cascade do |t|
    t.string "email"
    t.integer "struggle_amt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutoring_session_students", force: :cascade do |t|
    t.bigint "tutoring_session_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_tutoring_session_students_on_student_id"
    t.index ["tutoring_session_id"], name: "index_tutoring_session_students_on_tutoring_session_id"
  end

  create_table "tutoring_session_tutors", force: :cascade do |t|
    t.bigint "tutoring_session_id"
    t.bigint "tutor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tutor_id"], name: "index_tutoring_session_tutors_on_tutor_id"
    t.index ["tutoring_session_id"], name: "index_tutoring_session_tutors_on_tutoring_session_id"
  end

  create_table "tutoring_sessions", force: :cascade do |t|
    t.string "type"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutors", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
