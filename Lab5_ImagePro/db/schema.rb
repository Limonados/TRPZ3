# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_11_13_232308) do
  create_table "filters", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.float "intensity"
    t.boolean "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "file_name"
    t.string "file_format"
    t.integer "width"
    t.integer "height"
    t.integer "file_size"
    t.integer "layer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["layer_id"], name: "index_images_on_layer_id", unique: true
  end

  create_table "layer_filters", force: :cascade do |t|
    t.integer "layer_id", null: false
    t.integer "filter_id", null: false
    t.float "intensity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["filter_id"], name: "index_layer_filters_on_filter_id"
    t.index ["layer_id"], name: "index_layer_filters_on_layer_id"
  end

  create_table "layers", force: :cascade do |t|
    t.string "name"
    t.float "opacity"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "blend_mode"
    t.integer "project_id", null: false
    t.index ["project_id"], name: "index_layers_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "email"
    t.string "password_digest"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "images", "layers"
  add_foreign_key "layer_filters", "filters"
  add_foreign_key "layer_filters", "layers"
  add_foreign_key "layers", "projects"
  add_foreign_key "projects", "users"
end
