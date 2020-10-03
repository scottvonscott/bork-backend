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

ActiveRecord::Schema.define(version: 2020_09_22_035212) do

  create_table "dungeon_levels", force: :cascade do |t|
    t.integer "level_number"
    t.string "entry_text"
    t.string "exit_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "score"
    t.string "player_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loot_items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "dungeon_level_id", null: false
    t.string "bonus_type"
    t.integer "bonus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dungeon_level_id"], name: "index_loot_items_on_dungeon_level_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.integer "health"
    t.integer "attack"
    t.integer "dungeon_level_id", null: false
    t.string "img_url"
    t.string "intro_text"
    t.string "quote"
    t.string "death_text"
    t.boolean "final_boss"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dungeon_level_id"], name: "index_monsters_on_dungeon_level_id"
  end

  add_foreign_key "loot_items", "dungeon_levels"
  add_foreign_key "monsters", "dungeon_levels"
end
