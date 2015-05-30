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

ActiveRecord::Schema.define(version: 20150529183350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.float    "lat"
    t.float    "lng"
    t.string   "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weather_days", force: :cascade do |t|
    t.integer  "city_id"
    t.integer  "date"
    t.string   "summary"
    t.integer  "sunrise"
    t.integer  "sunset"
    t.decimal  "cloud_cover",        precision: 5, scale: 2
    t.boolean  "rain"
    t.decimal  "precipitation",      precision: 5, scale: 2
    t.boolean  "snow"
    t.decimal  "snowfall",           precision: 5, scale: 2
    t.integer  "avg_temp"
    t.integer  "high_temp"
    t.integer  "low_temp"
    t.integer  "avg_dewpt"
    t.integer  "avg_wind_spd"
    t.integer  "avg_wind_dir"
    t.integer  "humidity"
    t.integer  "high_apparent_temp"
    t.integer  "low_apparent_temp"
    t.integer  "avg_apparent_temp"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

end
