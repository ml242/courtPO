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

ActiveRecord::Schema.define(:version => 20131016202127) do

  create_table "gyms", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pokemons", :force => true do |t|
    t.string  "name"
    t.string  "type1"
    t.string  "type2"
    t.string  "ability1"
    t.float   "gender_ratio"
    t.string  "experience_curve"
    t.integer "catch_rate"
    t.integer "base_exp"
    t.integer "base_stats_hp"
    t.integer "base_stats_atk"
    t.integer "base_stats_def"
    t.integer "base_stats_spatk"
    t.integer "base_stats_spdef"
    t.integer "base_stats_speed"
    t.integer "evolve_to"
    t.integer "evolve_level"
    t.text    "learnabletm"
    t.string  "spatk"
  end

  create_table "trainers", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.integer  "gym_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
