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

ActiveRecord::Schema.define(version: 20170913225655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "examiner"
    t.string "appointmentType"
    t.string "appointmentStatus"
    t.datetime "date"
    t.string "street"
    t.string "city"
    t.string "postalCode"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "immunizations", force: :cascade do |t|
    t.string "name"
    t.string "givenBy"
    t.string "dosage"
    t.datetime "givenDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invitations", force: :cascade do |t|
    t.string "auth_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pin"
    t.index ["auth_token"], name: "index_invitations_on_auth_token", unique: true
  end

  create_table "medications", force: :cascade do |t|
    t.string "medication"
    t.string "prescriber"
    t.string "dose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referrals", force: :cascade do |t|
    t.string "doctor"
    t.datetime "startDate"
    t.datetime "expirationDate"
    t.integer "numberOfVisits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test2s", force: :cascade do |t|
    t.jsonb "test"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testers", force: :cascade do |t|
    t.jsonb "log"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.text "test", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
