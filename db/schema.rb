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

ActiveRecord::Schema.define(version: 20180120030230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lessons", force: :cascade do |t|
    t.boolean "completed"
    t.string "words"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_lessons_on_skill_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "alias"
    t.integer "score"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_options", force: :cascade do |t|
    t.string "text"
    t.boolean "correct"
    t.integer "order"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_options_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "category"
    t.string "expression"
    t.string "audio"
    t.integer "weight"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_questions_on_lesson_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_lesson_scores", force: :cascade do |t|
    t.integer "total"
    t.datetime "date"
    t.bigint "user_lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_lesson_id"], name: "index_user_lesson_scores_on_user_lesson_id"
  end

  create_table "user_lessons", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_user_lessons_on_lesson_id"
    t.index ["user_id"], name: "index_user_lessons_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "lessons", "skills"
  add_foreign_key "question_options", "questions"
  add_foreign_key "questions", "lessons"
  add_foreign_key "user_lesson_scores", "user_lessons"
  add_foreign_key "user_lessons", "lessons"
  add_foreign_key "user_lessons", "users"
end
