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

ActiveRecord::Schema.define(version: 2020_08_28_135216) do

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

  create_table "gce_servers", force: :cascade do |t|
    t.string "gce_server_associable_type", null: false
    t.integer "gce_server_associable_id", null: false
    t.text "identity"
    t.text "zone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gce_server_associable_type", "gce_server_associable_id"], name: "gce_server_associable"
  end

  create_table "implementation_tries", force: :cascade do |t|
    t.integer "change_request_step_id", null: false
    t.string "username_of_implementor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["change_request_step_id"], name: "index_implementation_tries_on_change_request_step_id"
  end

  create_table "implementation_try_steps", force: :cascade do |t|
    t.integer "implementation_try_id", null: false
    t.text "data"
    t.integer "sort_integer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["implementation_try_id"], name: "index_implementation_try_steps_on_implementation_try_id"
  end

  add_foreign_key "change_request_steps", "change_requests"
  add_foreign_key "change_requests", "apps"
  add_foreign_key "implementation_tries", "change_request_steps"
  add_foreign_key "implementation_try_steps", "implementation_tries"
end
