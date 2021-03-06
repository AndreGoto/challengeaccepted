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

ActiveRecord::Schema.define(version: 20161214194605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenge_messages", force: :cascade do |t|
    t.string   "message"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
    t.index ["member_id"], name: "index_challenge_messages_on_member_id", using: :btree
  end

  create_table "challenge_requests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["challenge_id"], name: "index_challenge_requests_on_challenge_id", using: :btree
    t.index ["user_id"], name: "index_challenge_requests_on_user_id", using: :btree
  end

  create_table "challenges", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "rules"
    t.string   "picture"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "id_user_owner"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "yourself",      default: false
    t.string   "at_stake"
  end

  create_table "invites", force: :cascade do |t|
    t.integer  "challenge_id"
    t.string   "guest_email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["challenge_id"], name: "index_invites_on_challenge_id", using: :btree
  end

  create_table "members", force: :cascade do |t|
    t.integer  "challenge_id"
    t.integer  "user_id"
    t.integer  "voted_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.boolean  "inative",      default: false
    t.index ["challenge_id"], name: "index_members_on_challenge_id", using: :btree
    t.index ["user_id"], name: "index_members_on_user_id", using: :btree
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "picture"
    t.string   "name"
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "challenge_messages", "members"
  add_foreign_key "challenge_requests", "challenges"
  add_foreign_key "challenge_requests", "users"
  add_foreign_key "invites", "challenges"
  add_foreign_key "members", "challenges"
  add_foreign_key "members", "users"
end
