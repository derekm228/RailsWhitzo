# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160413214022) do

  create_table "pictures", force: :cascade do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rental_id"
  end

  add_index "pictures", ["rental_id"], name: "index_pictures_on_rental_id"

  create_table "rentals", force: :cascade do |t|
    t.string   "title"
    t.string   "owner"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "price"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.integer  "lease_months"
    t.date     "move_in"
    t.date     "move_out"
    t.boolean  "washer_dryer"
    t.boolean  "outdoor_space"
    t.boolean  "fitness_center"
    t.boolean  "pet_friendly"
    t.boolean  "dishwasher"
    t.boolean  "pool"
    t.boolean  "storage_space"
    t.boolean  "wifi"
    t.boolean  "utilities_included"
    t.boolean  "porch"
    t.boolean  "bike_friendly"
    t.boolean  "ceiling_fans"
    t.boolean  "parking"
    t.boolean  "central_air"
    t.boolean  "concierge"
    t.boolean  "fireplace"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
