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

ActiveRecord::Schema.define(:version => 20111021204012) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "decieases", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evacuation_centers", :force => true do |t|
    t.string   "title"
    t.string   "location"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.integer  "org_id"
    t.text     "context"
    t.integer  "maximun"
    t.text     "transport"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "evacuation_centers", ["org_id"], :name => "index_evacuation_centers_on_org_id"

  create_table "evacuees", :force => true do |t|
    t.integer  "evacuation_center_id"
    t.string   "code"
    t.integer  "idcard"
    t.string   "name"
    t.string   "surname"
    t.string   "gender"
    t.integer  "age"
    t.string   "address"
    t.string   "district"
    t.string   "province"
    t.string   "phone"
    t.string   "contact"
    t.string   "hospital"
    t.string   "pet"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "zone"
  end

  add_index "evacuees", ["evacuation_center_id"], :name => "index_evacuees_on_evacuation_center_id"

  create_table "orgs", :force => true do |t|
    t.integer  "orgtype_id"
    t.string   "title"
    t.text     "commander"
    t.text     "regulation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orgs", ["orgtype_id"], :name => "index_orgs_on_orgtype_id"

  create_table "orgtypes", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "symptoms", :force => true do |t|
    t.integer  "evacuee_id"
    t.integer  "deciease_id"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "symptoms", ["deciease_id"], :name => "index_symptoms_on_deciease_id"
  add_index "symptoms", ["evacuee_id"], :name => "index_symptoms_on_evacuee_id"

  create_table "tasks", :force => true do |t|
    t.integer  "project_id"
    t.integer  "admin_user_id"
    t.string   "title"
    t.boolean  "is_done"
    t.date     "due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["project_id"], :name => "index_tasks_on_project_id"

end
