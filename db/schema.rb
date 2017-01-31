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

ActiveRecord::Schema.define(version: 20170131071550) do

  create_table "campaigns", force: :cascade do |t|
    t.string   "name"
    t.integer  "goal"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "video_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "main_image"
  end

  create_table "donations", force: :cascade do |t|
    t.integer  "solicitation_id"
    t.float    "amount"
    t.integer  "user_id"
    t.text     "comment"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["solicitation_id"], name: "index_donations_on_solicitation_id"
    t.index ["user_id"], name: "index_donations_on_user_id"
  end

  create_table "social_shares", force: :cascade do |t|
    t.integer  "solicitation_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "network"
    t.index ["solicitation_id"], name: "index_social_shares_on_solicitation_id"
  end

  create_table "solicitations", force: :cascade do |t|
    t.integer  "goal"
    t.string   "main_image"
    t.integer  "campaign_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "text"
    t.index ["campaign_id"], name: "index_solicitations_on_campaign_id"
    t.index ["user_id"], name: "index_solicitations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
