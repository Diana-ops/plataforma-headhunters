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

ActiveRecord::Schema.define(version: 2020_05_17_165106) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "candidates", force: :cascade do |t|
    t.string "full_name"
    t.string "social_name"
    t.date "date_of_birth"
    t.string "profile_description"
    t.string "experience"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "formation"
    t.string "courses"
    t.integer "level_id"
    t.string "profession"
    t.index ["level_id"], name: "index_candidates_on_level_id"
    t.index ["user_id"], name: "index_candidates_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "candidate_id", null: false
    t.integer "headhunter_id", null: false
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["candidate_id"], name: "index_comments_on_candidate_id"
    t.index ["headhunter_id"], name: "index_comments_on_headhunter_id"
  end

  create_table "headhunters", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_headhunters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_headhunters_on_reset_password_token", unique: true
  end

  create_table "job_opportunities", force: :cascade do |t|
    t.string "title"
    t.string "company"
    t.string "description_job"
    t.string "skills"
    t.decimal "salary_range"
    t.integer "level_id", null: false
    t.date "deadline"
    t.string "region"
    t.string "benefits"
    t.string "office_functions"
    t.string "company_expectations"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "headhunter_id"
    t.index ["headhunter_id"], name: "index_job_opportunities_on_headhunter_id"
    t.index ["level_id"], name: "index_job_opportunities_on_level_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "candidates", "levels"
  add_foreign_key "candidates", "users"
  add_foreign_key "comments", "candidates"
  add_foreign_key "comments", "headhunters"
  add_foreign_key "job_opportunities", "headhunters"
  add_foreign_key "job_opportunities", "levels"
end
