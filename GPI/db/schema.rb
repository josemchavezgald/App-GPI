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

ActiveRecord::Schema.define(version: 20180826034448) do

  create_table "accounts", force: :cascade do |t|
    t.string "nombre"
    t.string "contrasena"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bodegas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compras", force: :cascade do |t|
    t.string "producto"
    t.string "provedor"
    t.decimal "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guardados", force: :cascade do |t|
    t.string "cosa"
    t.decimal "cantidad"
    t.string "detalles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "recibido"
  end

  create_table "ingresos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oferta", force: :cascade do |t|
    t.string "producto"
    t.string "provedor"
    t.float "precio"
    t.decimal "bodega"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string "codigo"
    t.string "material"
    t.float "cantidad"
    t.string "solicitante"
    t.string "estado"
    t.text "detalles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "trabajo"
    t.string "unidad"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "validations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
