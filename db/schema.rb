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

ActiveRecord::Schema.define(:version => 20090903182639) do

  create_table "admissions", :force => true do |t|
    t.integer  "patient_id"
    t.datetime "admdate"
    t.string   "bed_id"
    t.datetime "depdate"
    t.string   "primaryindication"
    t.text     "clinicalsummary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

  create_table "admnotes", :force => true do |t|
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "admission_id"
    t.integer  "user_id"
  end

  create_table "agents", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "strength"
    t.string   "measure"
    t.float    "factor"
    t.integer  "category_id"
  end

  create_table "beds", :force => true do |t|
    t.integer  "bed_number"
    t.integer  "ward_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "checks", :force => true do |t|
    t.integer  "policy_id"
    t.string   "check_type"
    t.string   "check"
    t.string   "operator"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", :force => true do |t|
    t.string   "firstname"
    t.string   "surname"
    t.string   "position"
    t.string   "page_number"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "specialty"
  end

  create_table "doses", :force => true do |t|
    t.integer  "frequency"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "period"
  end

  create_table "forms", :force => true do |t|
    t.string   "form"
    t.string   "route"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indicationable_indications", :force => true do |t|
    t.integer  "indication_id"
    t.integer  "indicationable_id"
    t.string   "indicationable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indications", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", :force => true do |t|
    t.float    "potassium"
    t.float    "creatinine"
    t.float    "inr"
    t.float    "ppt"
    t.float    "albumin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
    t.integer  "dbp"
    t.datetime "collected"
  end

  create_table "patient_indications", :force => true do |t|
    t.integer  "indication_id"
    t.integer  "patient_id"
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

  create_table "policiable_policies", :force => true do |t|
    t.integer  "policy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "policiable_id"
    t.string   "policiable_type"
  end

  create_table "policies", :force => true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "policy_type"
  end

  create_table "prescription_order_lines", :force => true do |t|
    t.integer  "prescription_id"
    t.integer  "prescription_order_id"
    t.integer  "status_id"
    t.integer  "packs"
    t.integer  "units"
    t.boolean  "inpatient"
    t.boolean  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prescription_orders", :force => true do |t|
    t.integer  "status_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prescriptions", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.text     "ancillary_instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
    t.integer  "product_id"
    t.integer  "dose_id"
    t.integer  "doctor_id"
    t.integer  "user_id"
  end

  create_table "product_agents", :force => true do |t|
    t.integer  "product_id"
    t.integer  "agent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_doses", :force => true do |t|
    t.integer  "product_id"
    t.integer  "dose_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_stores", :force => true do |t|
    t.integer  "product_id"
    t.integer  "store_id"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "brand"
    t.integer  "pack_size"
    t.integer  "form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "store_order_lines", :force => true do |t|
    t.integer  "product_store_id"
    t.integer  "store_order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",         :default => 0
  end

  create_table "store_orders", :force => true do |t|
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ext"
    t.integer  "ward_id"
  end

  create_table "teams", :force => true do |t|
    t.integer  "ward_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",             :default => false
    t.string   "type"
    t.string   "firstname"
    t.string   "surname"
    t.string   "pager"
    t.string   "band"
  end

  create_table "wards", :force => true do |t|
    t.string   "name"
    t.string   "specialty"
    t.string   "nurse"
    t.text     "ward_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pharmacist_id"
  end

end
