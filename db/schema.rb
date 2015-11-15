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

ActiveRecord::Schema.define(version: 20151115004201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ideal_outcomes", force: :cascade do |t|
    t.integer  "new_situation_id"
    t.integer  "recommended_decision_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "ideal_outcomes", ["new_situation_id"], name: "index_ideal_outcomes_on_new_situation_id", using: :btree
  add_index "ideal_outcomes", ["recommended_decision_id"], name: "index_ideal_outcomes_on_recommended_decision_id", using: :btree

  create_table "new_situations", force: :cascade do |t|
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "new_situations", ["user_id"], name: "index_new_situations_on_user_id", using: :btree

  create_table "past_outcomes", force: :cascade do |t|
    t.integer  "past_situation_id"
    t.integer  "user_decision_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "past_outcomes", ["past_situation_id"], name: "index_past_outcomes_on_past_situation_id", using: :btree
  add_index "past_outcomes", ["user_decision_id"], name: "index_past_outcomes_on_user_decision_id", using: :btree

  create_table "past_situations", force: :cascade do |t|
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "past_situations", ["user_id"], name: "index_past_situations_on_user_id", using: :btree

  create_table "recommended_decisions", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "tags", ["taggable_type", "taggable_id"], name: "index_tags_on_taggable_type_and_taggable_id", using: :btree

  create_table "user_decisions", force: :cascade do |t|
    t.string   "choice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "ideal_outcomes", "new_situations"
  add_foreign_key "ideal_outcomes", "recommended_decisions"
  add_foreign_key "new_situations", "users"
  add_foreign_key "past_outcomes", "past_situations"
  add_foreign_key "past_outcomes", "user_decisions"
  add_foreign_key "past_situations", "users"
end
