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

ActiveRecord::Schema[8.1].define(version: 2025_10_27_155143) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"
  enable_extension "pgcrypto"

  create_table "cocktails", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.text "notes"
    t.integer "rating"
    t.datetime "updated_at", null: false
    t.text "variations"
  end

  create_table "cocktails_ingredients", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "cocktail_id", null: false
    t.uuid "ingredient_id", null: false
    t.string "measurement"
    t.float "quantity"
    t.index ["cocktail_id", "ingredient_id"], name: "index_cocktails_ingredients_on_cocktail_id_and_ingredient_id"
  end

  create_table "cocktails_tools", id: false, force: :cascade do |t|
    t.uuid "cocktail_id", null: false
    t.uuid "tool_id", null: false
    t.index ["cocktail_id", "tool_id"], name: "index_cocktails_tools_on_cocktail_id_and_tool_id"
  end

  create_table "ingredients", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "tools", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end
end
