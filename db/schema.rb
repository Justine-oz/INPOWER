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

ActiveRecord::Schema.define(version: 2020_08_19_105635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatrooms", force: :cascade do |t|
    t.string "theme"
    t.bigint "user_quest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_quest_id"], name: "index_chatrooms_on_user_quest_id"
  end

  create_table "flashcards", force: :cascade do |t|
    t.string "question"
    t.string "tip"
    t.bigint "quest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quest_id"], name: "index_flashcards_on_quest_id"
  end

  create_table "flashcards_executions", force: :cascade do |t|
    t.bigint "flashcard_id", null: false
    t.bigint "user_quest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flashcard_id"], name: "index_flashcards_executions_on_flashcard_id"
    t.index ["user_quest_id"], name: "index_flashcards_executions_on_user_quest_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "chatroom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
  end

  create_table "quests", force: :cascade do |t|
    t.text "moods", default: [], array: true
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
  end

  create_table "user_quests", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "quest_id", null: false
    t.index ["quest_id"], name: "index_user_quests_on_quest_id"
    t.index ["user_id"], name: "index_user_quests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nickname"
    t.string "gender"
    t.text "moods", default: [], array: true
    t.boolean "admin"
    t.text "preferences", default: [], array: true
    t.date "birth"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "quest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quest_id"], name: "index_videos_on_quest_id"
  end

  create_table "videos_executions", force: :cascade do |t|
    t.bigint "video_id", null: false
    t.bigint "user_quest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_quest_id"], name: "index_videos_executions_on_user_quest_id"
    t.index ["video_id"], name: "index_videos_executions_on_video_id"
  end

  add_foreign_key "chatrooms", "user_quests"
  add_foreign_key "flashcards", "quests"
  add_foreign_key "flashcards_executions", "flashcards"
  add_foreign_key "flashcards_executions", "user_quests"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "user_quests", "quests"
  add_foreign_key "user_quests", "users"
  add_foreign_key "videos", "quests"
  add_foreign_key "videos_executions", "user_quests"
  add_foreign_key "videos_executions", "videos"
end
