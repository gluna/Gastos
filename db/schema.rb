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

ActiveRecord::Schema.define(version: 20190407225313) do

  create_table "gastos", force: :cascade do |t|
    t.date "dtgasto"
    t.integer "tipo_gasto_id"
    t.decimal "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "obs"
    t.index ["tipo_gasto_id"], name: "index_gastos_on_tipo_gasto_id"
  end

  create_table "receita", force: :cascade do |t|
    t.date "dtreceita"
    t.integer "tipo_receita_id"
    t.decimal "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_receita_id"], name: "index_receita_on_tipo_receita_id"
  end

  create_table "tipo_gastos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_receita", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
