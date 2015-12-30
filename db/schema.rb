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

ActiveRecord::Schema.define(version: 20151230061002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "indicator_types", force: :cascade do |t|
    t.string   "name"
    t.decimal  "weight"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "indicators", force: :cascade do |t|
    t.integer  "indicator_type_id"
    t.integer  "record_type_id"
    t.integer  "parent_id"
    t.string   "question_number"
    t.integer  "indicator_number"
    t.text     "question_text"
    t.text     "indicator_text"
    t.integer  "prior_cycle"
    t.integer  "prior_question"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "reporting_cycle_id"
  end

  create_table "membership_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "record_types", force: :cascade do |t|
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

  create_table "region_groups", force: :cascade do |t|
    t.integer  "region_source_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "region_sources", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "website"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "region_group_id"
  end

  create_table "reporting_cycles", force: :cascade do |t|
    t.integer  "convention_id"
    t.date     "date"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "scoring_options", force: :cascade do |t|
    t.integer  "indicator_id"
    t.string   "description"
    t.integer  "value"
    t.boolean  "not_applicable"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
