# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090805230543) do

  create_table "admissions", :force => true do |t|
    t.integer  "patient_id"
    t.datetime "admdate"
    t.datetime "depdate"
    t.string   "primaryindication"
    t.text     "clinicalsummary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admnotes", :force => true do |t|
    t.string   "username"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "admission_id"
  end

  create_table "beds", :force => true do |t|
    t.integer  "bed_number"
    t.integer  "ward_id"
    t.integer  "admission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "surname"
    t.date     "dob"
    t.text     "allergies"
    t.text     "sensitivities"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phn"
  end

  create_table "pharmacists", :force => true do |t|
    t.string   "firstname"
    t.string   "surname"
    t.string   "pager"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wards", :force => true do |t|
    t.string   "name"
    t.string   "specialty"
    t.string   "pharmacist_id"
    t.string   "nurse"
    t.text     "ward_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
