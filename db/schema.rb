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

ActiveRecord::Schema.define(version: 20150927181541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employers", force: :cascade do |t|
    t.string   "name"
    t.string   "avatar"
    t.string   "sex"
    t.date     "admission"
    t.date     "dismiss"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uniform_piece_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "uniform_piece_groups", ["name"], name: "index_uniform_piece_groups_on_name", unique: true, using: :btree

  create_table "uniform_piece_kinds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "uniform_piece_kinds", ["name"], name: "index_uniform_piece_kinds_on_name", unique: true, using: :btree

  create_table "uniform_piece_sizes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uniform_pieces", force: :cascade do |t|
    t.date     "entry"
    t.date     "delivered"
    t.text     "delivery_reason"
    t.date     "returned"
    t.text     "return_reason"
    t.integer  "uniform_piece_size_id"
    t.string   "color"
    t.integer  "uniform_piece_kind_id"
    t.integer  "uniform_piece_group_id"
    t.boolean  "used"
    t.integer  "employer_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "gender"
  end

  add_index "uniform_pieces", ["employer_id"], name: "index_uniform_pieces_on_employer_id", using: :btree
  add_index "uniform_pieces", ["uniform_piece_group_id"], name: "index_uniform_pieces_on_uniform_piece_group_id", using: :btree
  add_index "uniform_pieces", ["uniform_piece_kind_id"], name: "index_uniform_pieces_on_uniform_piece_kind_id", using: :btree
  add_index "uniform_pieces", ["uniform_piece_size_id"], name: "index_uniform_pieces_on_uniform_piece_size_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.integer  "employer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["employer_id"], name: "index_users_on_employer_id", using: :btree

  add_foreign_key "uniform_pieces", "employers"
  add_foreign_key "uniform_pieces", "uniform_piece_groups"
  add_foreign_key "uniform_pieces", "uniform_piece_kinds"
  add_foreign_key "uniform_pieces", "uniform_piece_sizes"
  add_foreign_key "users", "employers"
end
