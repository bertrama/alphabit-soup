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

ActiveRecord::Schema.define(version: 20171210211436) do

  create_table "collections", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "collection_id"
    t.index ["collection_id"], name: "index_groups_on_collection_id"
  end

  create_table "samples", force: :cascade do |t|
    t.string "identifier"
    t.string "label"
    t.string "title"
    t.string "author"
    t.string "source"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_samples", id: false, force: :cascade do |t|
    t.integer "sample_id"
    t.integer "group_id"
    t.index ["group_id"], name: "index_groups_samples_on_group_id"
    t.index ["sample_id"], name: "index_groups_samples_on_sample_id"
  end

end
