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

ActiveRecord::Schema.define(version: 2020_08_28_121639) do

  create_table "apps", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "change_request_steps", force: :cascade do |t|
    t.integer "change_request_id", null: false
    t.text "file_url"
    t.text "todo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["change_request_id"], name: "index_change_request_steps_on_change_request_id"
  end

  create_table "change_requests", force: :cascade do |t|
    t.integer "app_id", null: false
    t.text "todo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["app_id"], name: "index_change_requests_on_app_id"
  end

  add_foreign_key "change_request_steps", "change_requests"
  add_foreign_key "change_requests", "apps"
end
