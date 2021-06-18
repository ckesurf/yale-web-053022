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

ActiveRecord::Schema.define(version: 2021_06_18_153355) do

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.integer "rating"
    t.integer "years_experience"
    t.string "car_model"
    t.string "license_plate"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "bio"
  end

  create_table "rides", force: :cascade do |t|
    t.integer "driver_id"
    t.integer "price"
    t.integer "distance"
    t.string "destination"
    t.string "pick_up"
    t.integer "passenger_id"
  end

end
