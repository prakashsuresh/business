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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121219100905) do

  create_table "banks", :force => true do |t|
    t.integer  "acc_no"
    t.string   "name"
    t.float    "balance",    :default => 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blood_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "logins", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "employee_type"
    t.integer  "emp_id"
    t.string   "adress"
    t.string   "phone_no",            :limit => 50
    t.date     "dob"
    t.date     "admission_date"
    t.integer  "basic_salary"
    t.integer  "bank_acc_no"
    t.integer  "gender_id"
    t.integer  "blood_group_id"
    t.integer  "region_id"
    t.integer  "nationality_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
  end

  create_table "nationalities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "salaries", :force => true do |t|
    t.integer  "login_id"
    t.date     "salary_date"
    t.float    "working_days"
    t.float    "present_days"
    t.float    "absent_days"
    t.float    "basic"
    t.float    "hr"
    t.float    "conveyance"
    t.float    "da"
    t.float    "ma"
    t.float    "other"
    t.float    "grosspay"
    t.float    "pf"
    t.float    "net_pay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
