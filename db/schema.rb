# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140823141717) do

  create_table "campaigns", force: true do |t|
    t.string   "name"
    t.integer  "money"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", force: true do |t|
    t.string   "name"
    t.integer  "exp"
    t.integer  "user_id"
    t.integer  "campaign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characters", ["campaign_id"], name: "index_characters_on_campaign_id"
  add_index "characters", ["user_id"], name: "index_characters_on_user_id"

  create_table "events", force: true do |t|
    t.integer  "money"
    t.integer  "campaign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["campaign_id"], name: "index_events_on_campaign_id"

  create_table "monsters", force: true do |t|
    t.string "family"
    t.string "name",              null: false
    t.string "altname"
    t.string "size"
    t.string "type"
    t.string "descriptor"
    t.string "hit_dice"
    t.string "initiative"
    t.string "speed"
    t.string "armor_class"
    t.string "base_attack"
    t.string "grapple"
    t.string "attack"
    t.text   "full_attack"
    t.string "space"
    t.string "reach"
    t.string "special_attacks"
    t.text   "special_qualities"
    t.string "saves"
    t.string "abilities"
    t.text   "skills"
    t.string "bonus_feats"
    t.text   "feats"
    t.text   "epic_feats"
    t.string "environment"
    t.text   "organization"
    t.string "challenge_rating"
    t.string "treasure"
    t.string "alignment"
    t.string "advancement"
    t.string "level_adjustment"
    t.text   "special_abilities"
    t.text   "stat_block"
    t.text   "full_text"
    t.string "reference"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
