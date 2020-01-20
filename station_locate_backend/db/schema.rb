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

ActiveRecord::Schema.define(version: 2020_01_09_212404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "country"
    t.string "state"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "station_id", null: false
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["station_id"], name: "index_notes_on_station_id"
  end

  create_table "stations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "station_id"
    t.string "station_name"
    t.string "owner_network"
    t.string "owner_network_web"
    t.string "hours"
    t.string "rates"
    t.integer "distance"
    t.integer "phone_no"
    t.string "status"
    t.string "public_or_private"
    t.string "access"
    t.string "accepted_payments"
    t.float "longitude"
    t.float "latitude"
    t.string "street_address"
    t.string "city"
    t.string "intersection_directions"
    t.string "country"
    t.string "state"
    t.integer "zipcode"
    t.string "facility_type"
    t.integer "no_of_fast_chargers"
    t.integer "no_of_level_2_EVSE"
    t.integer "no_of_level_1_EVSE"
    t.string "ev_connector_types"
    t.string "renewable_source"
    t.float "geocode_accuracy"
    t.boolean "in_my_stations"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_stations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "country"
    t.string "state"
    t.string "city"
    t.integer "zipcode"
    t.string "street_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "locations", "users"
  add_foreign_key "notes", "stations"
  add_foreign_key "stations", "users"
end
