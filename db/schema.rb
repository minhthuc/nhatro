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

ActiveRecord::Schema.define(version: 20170809073142) do

  create_table "diens", force: :cascade do |t|
    t.integer "gia"
    t.integer "hoadon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hoadon_id"], name: "index_diens_on_hoadon_id"
  end

  create_table "hoadons", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_hoadons_on_user_id"
  end

  create_table "nhas", force: :cascade do |t|
    t.string "phong"
    t.string "tang"
    t.string "songuoi"
    t.integer "gia"
    t.integer "hoadon_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hoadon_id"], name: "index_nhas_on_hoadon_id"
    t.index ["user_id"], name: "index_nhas_on_user_id"
  end

  create_table "nuocs", force: :cascade do |t|
    t.integer "gia"
    t.integer "hoadon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hoadon_id"], name: "index_nuocs_on_hoadon_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "quequan"
    t.string "socmt"
    t.integer "tuoi"
    t.string "diachithuongchu"
    t.string "sodienthoai"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "chunha"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wifis", force: :cascade do |t|
    t.string "password"
    t.string "ssid"
    t.integer "gia"
    t.integer "hoadon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hoadon_id"], name: "index_wifis_on_hoadon_id"
  end

  create_table "xes", force: :cascade do |t|
    t.string "bienxe"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_xes_on_user_id"
  end

end
