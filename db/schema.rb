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

ActiveRecord::Schema.define(version: 2018_06_29_064415) do

  create_table "categories", force: :cascade do |t|
    t.string "nome_cat"
    t.text "descr"
    t.string "img1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.text "nome"
    t.text "descr"
    t.string "img1"
    t.string "img2"
    t.string "img3"
    t.integer "category_id"
    t.float "prezzo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_games_on_category_id"
  end

  create_table "lines", force: :cascade do |t|
    t.integer "order_id"
    t.integer "game_id"
    t.integer "quantita"
    t.float "prezzo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_lines_on_game_id"
    t.index ["order_id"], name: "index_lines_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "data"
    t.integer "utent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["utent_id"], name: "index_orders_on_utent_id"
  end

  create_table "utents", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
