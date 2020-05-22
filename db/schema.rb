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

ActiveRecord::Schema.define(version: 2020_05_15_094724) do

  create_table "books", force: :cascade do |t|
    t.string "image_id"
    t.integer "system_id"
    t.string "title", default: "", null: false
    t.text "text"
    t.boolean "official"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["official"], name: "index_books_on_official"
    t.index ["system_id"], name: "index_books_on_system_id"
    t.index ["title"], name: "index_books_on_title"
  end

  create_table "bouquets", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "character_id"], name: "index_bouquets_on_user_id_and_character_id", unique: true
    t.index ["user_id"], name: "index_bouquets_on_user_id"
    t.index [nil], name: "index_bouquets_on_charcter_id"
  end

  create_table "character_skills", force: :cascade do |t|
    t.string "name"
    t.string "text"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_character_skills_on_name"
  end

  create_table "character_statuses", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "character_skill_id"
    t.integer "flower_id"
    t.integer "color_id"
    t.integer "system_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_character_statuses_on_character_id"
    t.index ["character_skill_id"], name: "index_character_statuses_on_character_skill_id"
    t.index ["color_id"], name: "index_character_statuses_on_color_id"
    t.index ["flower_id"], name: "index_character_statuses_on_flower_id"
    t.index ["system_id"], name: "index_character_statuses_on_system_id"
  end

  create_table "characters", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "image_id"
    t.string "name", default: "", null: false
    t.string "nickname"
    t.string "gender"
    t.string "age"
    t.string "race"
    t.string "birthday"
    t.string "personality"
    t.string "weakness"
    t.string "strength"
    t.string "from"
    t.integer "bload_type"
    t.text "profile"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_characters_on_name"
    t.index ["nickname"], name: "index_characters_on_nickname"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "name", null: false
    t.string "text"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_colors_on_name"
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.integer "user_id", null: false
    t.integer "character_id", null: false
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_comments_on_character_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "flowers", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_flowers_on_name"
  end

  create_table "letters", force: :cascade do |t|
    t.integer "from_id", null: false
    t.integer "to_id", null: false
    t.string "title", default: "", null: false
    t.string "image_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["from_id"], name: "index_letters_on_from_id"
    t.index ["title"], name: "index_letters_on_title"
    t.index ["to_id"], name: "index_letters_on_to_id"
  end

  create_table "likes", force: :cascade do |t|
    t.string "name", default: ""
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_likes_on_name"
  end

  create_table "partnerships", force: :cascade do |t|
    t.integer "follower_id", null: false
    t.integer "followed_id", null: false
    t.boolean "match", default: false, null: false
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id", "follower_id"], name: "index_partnerships_on_followed_id_and_follower_id", unique: true
    t.index ["followed_id"], name: "index_partnerships_on_followed_id"
    t.index ["follower_id"], name: "index_partnerships_on_follower_id", unique: true
    t.index ["match"], name: "index_partnerships_on_match"
  end

  create_table "playing_styles", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_playing_styles_on_name"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id", null: false
    t.integer "followed_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id", "follower_id"], name: "index_relationships_on_followed_id_and_follower_id", unique: true
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "romance_styles", force: :cascade do |t|
    t.string "name", default: ""
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_romance_styles_on_name"
  end

  create_table "session_styles", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_session_styles_on_name"
  end

  create_table "systems", force: :cascade do |t|
    t.string "image_id"
    t.string "title", default: "", null: false
    t.text "text"
    t.boolean "official"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["official"], name: "index_systems_on_official"
    t.index ["title"], name: "index_systems_on_title"
  end

  create_table "user_skills", force: :cascade do |t|
    t.string "name", default: ""
    t.string "text"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_user_skills_on_name", unique: true
  end

  create_table "user_statuses", force: :cascade do |t|
    t.integer "user_id"
    t.text "introduction"
    t.integer "user_skill_id"
    t.integer "like_id"
    t.integer "dislike_id"
    t.integer "system_id"
    t.integer "romance_style_id"
    t.integer "playing_style_id"
    t.integer "session_style_id"
    t.integer "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dislike_id"], name: "index_user_statuses_on_dislike_id"
    t.index ["like_id"], name: "index_user_statuses_on_like_id"
    t.index ["playing_style_id"], name: "index_user_statuses_on_playing_style_id"
    t.index ["romance_style_id"], name: "index_user_statuses_on_romance_style_id"
    t.index ["session_style_id"], name: "index_user_statuses_on_session_style_id"
    t.index ["system_id"], name: "index_user_statuses_on_system_id"
    t.index ["user_id"], name: "index_user_statuses_on_user_id"
    t.index ["user_skill_id"], name: "index_user_statuses_on_user_skill_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "image_id"
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index [nil], name: "index_users_on_sns"
  end

end
