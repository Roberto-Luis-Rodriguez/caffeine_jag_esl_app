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

ActiveRecord::Schema.define(version: 20181006170432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lessonplans", force: :cascade do |t|
    t.string "name"
    t.string "attachment"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id", "created_at"], name: "index_lessonplans_on_teacher_id_and_created_at"
    t.index ["teacher_id"], name: "index_lessonplans_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.string "picture"
    t.index ["email"], name: "index_teachers_on_email", unique: true
  end

  add_foreign_key "lessonplans", "teachers"
end
