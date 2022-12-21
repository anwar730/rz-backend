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

ActiveRecord::Schema[7.0].define(version: 2022_12_20_075106) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employers", force: :cascade do |t|
    t.string "company_name"
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "role"
    t.boolean "isloggedin"
    t.integer "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_applications", force: :cascade do |t|
    t.integer "jobseeker_id"
    t.integer "job_id"
    t.integer "employer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "company_name"
    t.string "category"
    t.string "job_title"
    t.string "job_description"
    t.string "responsibilities"
    t.integer "salary"
    t.string "status"
    t.integer "number_of_applicants"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobseekers", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "role"
    t.integer "rating"
    t.string "skills"
    t.string "jobs_done"
    t.boolean "isloggedin"
    t.integer "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matched_jobs", force: :cascade do |t|
    t.integer "jobseeker_id"
    t.integer "job_id"
    t.integer "employer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
