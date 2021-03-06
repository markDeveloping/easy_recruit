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

ActiveRecord::Schema.define(version: 20170315190941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_jobs", force: :cascade do |t|
    t.integer "job_id"
    t.integer "user_id"
  end

  add_index "access_jobs", ["job_id"], name: "index_access_jobs_on_job_id", using: :btree
  add_index "access_jobs", ["user_id"], name: "index_access_jobs_on_user_id", using: :btree

  create_table "applications", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "job_id"
    t.integer  "app_status_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "email"
  end

  create_table "contracts", force: :cascade do |t|
    t.string   "contract"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string "grade"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "jobDescription"
    t.text     "personalSpec"
    t.text     "selectDetails"
    t.integer  "salaryMin"
    t.integer  "salaryMax"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "contract_id"
    t.integer  "work_pattern_id"
    t.integer  "status_id",        default: 1
    t.integer  "department_id"
    t.string   "grade_equivalent"
    t.integer  "grade_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "job_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "department_id"
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.boolean  "admin"
    t.string   "remember_digest"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

  create_table "work_patterns", force: :cascade do |t|
    t.string   "working_pattern"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
