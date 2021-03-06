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

ActiveRecord::Schema.define(version: 2019_01_09_071812) do

  create_table "episodes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "podcast_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "episode_thumbnail_file_name"
    t.string "episode_thumbnail_content_type"
    t.bigint "episode_thumbnail_file_size"
    t.datetime "episode_thumbnail_updated_at"
    t.string "mp3_file_name"
    t.string "mp3_content_type"
    t.bigint "mp3_file_size"
    t.datetime "mp3_updated_at"
    t.index ["podcast_id"], name: "index_episodes_on_podcast_id"
  end

  create_table "podcasts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "description"
    t.string "itunes"
    t.string "stitcher"
    t.string "podbay"
    t.string "thumbnail_file_name"
    t.string "thumbnail_content_type"
    t.bigint "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.index ["email"], name: "index_podcasts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_podcasts_on_reset_password_token", unique: true
  end

end
