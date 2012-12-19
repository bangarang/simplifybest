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

ActiveRecord::Schema.define(:version => 20121219105325) do

  create_table "accessories", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "product_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
  end

  add_index "products", ["slug"], :name => "index_products_on_slug"

  create_table "supply_items", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "product_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
