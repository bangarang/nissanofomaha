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

ActiveRecord::Schema.define(version: 20140502152631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "credit_applications", force: true do |t|
    t.string   "primary_first_name"
    t.string   "primary_last_name"
    t.string   "primary_address"
    t.string   "primary_city"
    t.string   "primary_state"
    t.string   "primary_zip_code"
    t.string   "primary_contact_phone"
    t.string   "primary_email"
    t.string   "primary_time_at_residence"
    t.string   "primary_monthly_rent"
    t.string   "primary_date_of_birth"
    t.string   "primary_social_security_number"
    t.string   "primary_employer_name"
    t.string   "primary_employer_phone"
    t.string   "primary_occupation"
    t.string   "primary_time_on_job"
    t.string   "primary_monthly_income"
    t.string   "joint_first_name"
    t.string   "joint_last_name"
    t.string   "joint_address"
    t.string   "joint_city"
    t.string   "joint_state"
    t.string   "joint_zip_code"
    t.string   "joint_contact_phone"
    t.string   "joint_email"
    t.string   "joint_time_at_residence"
    t.string   "joint_monthly_rent"
    t.string   "joint_date_of_birth"
    t.string   "joint_social_security_number"
    t.string   "joint_employer_name"
    t.string   "joint_employer_phone"
    t.string   "joint_occupation"
    t.string   "joint_time_on_job"
    t.string   "joint_monthly_income"
    t.string   "interest_model_year"
    t.string   "interest_make"
    t.string   "interest_model"
    t.string   "interest_price"
    t.string   "interest_mileage"
    t.string   "interest_vin"
    t.string   "trade_model_year"
    t.string   "trade_make"
    t.string   "trade_model"
    t.string   "trade_price"
    t.string   "trade_mileage"
    t.string   "trade_vin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exteriors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "new_vehicle_id"
    t.string   "color"
  end

  create_table "imports", force: true do |t|
    t.string   "name"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "import_time"
    t.datetime "current"
    t.boolean  "latest"
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
    t.integer  "category_id"
    t.text     "headline"
    t.string   "slug"
    t.string   "vauto_name"
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
    t.string   "link"
  end

  create_table "parts_orders", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "zip"
    t.string   "email"
    t.string   "year"
    t.string   "make"
    t.string   "model"
    t.string   "vin"
    t.text     "comments"
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
    t.integer  "special_id"
  end

  create_table "specials", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_rides", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "phone"
    t.string   "email"
    t.boolean  "method_phone"
    t.boolean  "method_email"
    t.boolean  "morning"
    t.boolean  "afternoon"
    t.boolean  "evening"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.boolean  "m_a"
  end

end
