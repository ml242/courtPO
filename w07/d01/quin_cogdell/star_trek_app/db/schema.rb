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

ActiveRecord::Schema.define(:version => 20131104041257) do

  create_table "captains_log", :force => true do |t|
    t.string   "title"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "crew_members", :force => true do |t|
    t.string   "name"
    t.string   "shirt_color",  :default => "red"
    t.boolean  "on_ship",      :default => true
    t.integer  "star_ship_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "refugees", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "star_ships", :force => true do |t|
    t.string   "name"
    t.integer  "shield_strength", :default => 100
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

end
