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

ActiveRecord::Schema.define(version: 20151030020418) do

  create_table "cluster_members", force: :cascade do |t|
    t.integer  "cluster_id"
    t.integer  "convention_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "clusters", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "convention_memberships", force: :cascade do |t|
    t.integer  "convention_id"
    t.integer  "country_id"
    t.string   "membership_type_id"
    t.date     "date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "conventions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.integer  "population",             limit: 8
    t.integer  "area",                   limit: 8
    t.boolean  "un_member"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.decimal  "population_growth"
    t.integer  "gdp",                    limit: 8
    t.integer  "gdp_per_capita",         limit: 8
    t.text     "iso_code_2"
    t.text     "iso_code_3"
    t.integer  "country_numeric"
    t.integer  "threatened_species"
    t.decimal  "forested_area"
    t.integer  "co2_emission",           limit: 8
    t.decimal  "co2_per_capita"
    t.integer  "agriculture_production"
  end

  create_table "membership_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "region_countries", force: :cascade do |t|
    t.integer  "region_id"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reporting_cycles", force: :cascade do |t|
    t.integer  "convention_id"
    t.date     "date"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
