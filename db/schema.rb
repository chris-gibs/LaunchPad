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

ActiveRecord::Schema.define(version: 2021_05_27_042822) do

  create_table "bookings", force: :cascade do |t|
    t.decimal "price"
    t.datetime "date"
    t.integer "organisation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organisation_id"], name: "index_bookings_on_organisation_id"
  end

  create_table "bookings_launches", id: false, force: :cascade do |t|
    t.integer "booking_id", null: false
    t.integer "launch_id", null: false
    t.index ["booking_id", "launch_id"], name: "index_bookings_launches_on_booking_id_and_launch_id"
    t.index ["launch_id", "booking_id"], name: "index_bookings_launches_on_launch_id_and_booking_id"
  end

  create_table "launches", force: :cascade do |t|
    t.string "type"
    t.decimal "price"
    t.datetime "launch_date"
    t.integer "organisation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organisation_id"], name: "index_launches_on_organisation_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "type"
    t.string "description"
    t.string "image"
    t.integer "phone"
    t.boolean "launch_provider"
    t.index ["email"], name: "index_organisations_on_email", unique: true
    t.index ["reset_password_token"], name: "index_organisations_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "organisations"
  add_foreign_key "launches", "organisations"
end
