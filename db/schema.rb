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

ActiveRecord::Schema.define(version: 20140128063213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exteriors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "new_vehicle_id"
    t.string   "color"
  end

  create_table "interiors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "new_vehicle_id"
    t.string   "color"
  end

  create_table "new_vehicles", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "city_mpg"
    t.integer  "highway_mpg"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "msrp"
    t.string   "image"
  end

  create_table "packages", force: true do |t|
    t.string   "model"
    t.string   "msrp"
    t.integer  "city"
    t.integer  "hwy"
    t.text     "features"
    t.integer  "new_vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string   "image_url"
    t.integer  "interior_id"
    t.integer  "exterior_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "vehicles", force: true do |t|
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "dealerid"
    t.string   "vin"
    t.string   "stock_"
    t.string   "newused"
    t.string   "model_number"
    t.string   "body"
    t.string   "transmission"
    t.string   "series"
    t.integer  "body_door_ct"
    t.integer  "odometer"
    t.integer  "engine_cylinder_ct"
    t.string   "engine_displacement"
    t.string   "drivetrain_desc"
    t.string   "colour"
    t.string   "interior_color"
    t.integer  "invoice"
    t.integer  "msrp"
    t.integer  "book_value"
    t.integer  "price"
    t.string   "inventory_date"
    t.string   "certified"
    t.text     "description"
    t.text     "features"
    t.text     "photo_url_list"
    t.integer  "city_mpg"
    t.integer  "highway_mpg"
    t.string   "photos_last_modified_date"
    t.string   "status_code"
    t.integer  "cost"
    t.string   "series_detail"
    t.string   "inspection_checklist_"
    t.string   "video_url"
    t.string   "video_player_url"
    t.string   "rw"
  end

end
