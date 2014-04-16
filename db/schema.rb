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

ActiveRecord::Schema.define(:version => 20140416205428) do

  create_table "accessories", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "product_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "slug"
    t.string   "description"
  end

  create_table "downloads", :force => true do |t|
    t.string   "name"
    t.integer  "product_id"
    t.string   "download"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "featured_pictures", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "messages", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "company"
    t.string   "address"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "type"
    t.string   "sos"
    t.string   "meter"
    t.text     "comment"
    t.string   "phone_number"
  end

  create_table "pictures", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "picture"
  end

  create_table "product_pictures", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "picture"
    t.integer  "product_id"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "excerpt"
    t.text     "description"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "image"
    t.string   "slug"
    t.string   "configuration"
    t.string   "speed"
    t.string   "warmup"
    t.string   "firstout"
    t.string   "resolution"
    t.string   "memory"
    t.string   "hdd"
    t.string   "duplex"
    t.string   "stdoutput"
    t.string   "electrical"
    t.string   "dimensions"
    t.string   "weight"
    t.string   "maxdutycycle"
    t.string   "stdsources"
    t.string   "optsources"
    t.string   "papercap"
    t.string   "papersize"
    t.string   "paperweight"
    t.string   "inputmaterials"
    t.string   "stdcontroller"
    t.string   "emulations"
    t.string   "fonts"
    t.string   "windows"
    t.string   "novell"
    t.string   "macos"
    t.string   "unixos"
    t.string   "interfaces"
    t.string   "protocols"
    t.string   "drivers"
    t.string   "utilities"
    t.string   "scanresolutions"
    t.string   "fileformats"
    t.string   "pdfextension"
    t.string   "scanspeed"
    t.string   "connectivity"
    t.string   "scanfunction"
    t.string   "originalsize"
    t.string   "scandriver"
    t.integer  "category_id"
    t.boolean  "featured"
    t.integer  "brand_id"
    t.boolean  "smalloffice"
    t.boolean  "printer"
    t.boolean  "workgroup"
    t.boolean  "enterprise"
    t.boolean  "new"
    t.string   "pic_url"
  end

  add_index "products", ["slug"], :name => "index_products_on_slug"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "supply_items", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "product_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
