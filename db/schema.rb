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

ActiveRecord::Schema.define(version: 2019_06_21_154537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hexagrammes", force: :cascade do |t|
    t.string "nom"
    t.string "description"
    t.string "trait1"
    t.string "trait2"
    t.string "trait3"
    t.string "trait4"
    t.string "trait5"
    t.string "trait6"
    t.string "image"
    t.integer "numero"
    t.string "trigramme_haut"
    t.string "trigramme_bas"
    t.string "oppose"
    t.string "reverse"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tirages", force: :cascade do |t|
    t.string "question"
    t.string "perspective"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "hexagramme_id"
    t.string "reply_traits"
    t.index ["hexagramme_id"], name: "index_tirages_on_hexagramme_id"
    t.index ["user_id"], name: "index_tirages_on_user_id"
  end

  create_table "traits", force: :cascade do |t|
    t.string "nom"
    t.string "jet_brut"
    t.string "jet_ordered"
    t.bigint "tirage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tirage_id"], name: "index_traits_on_tirage_id"
  end

  create_table "trigrammes", force: :cascade do |t|
    t.string "nom"
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "tirages", "hexagrammes"
  add_foreign_key "tirages", "users"
  add_foreign_key "traits", "tirages"
end
