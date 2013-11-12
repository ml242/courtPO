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

ActiveRecord::Schema.define(:version => 20131110004308) do

  create_table "cases", :force => true do |t|
    t.string   "title"
    t.text     "conflict"
    t.text     "summary"
    t.boolean  "is_resolved", :default => false
    t.integer  "expiration"
    t.integer  "user_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "solutions", :force => true do |t|
    t.text     "opinion"
    t.boolean  "is_judgement", :default => false
    t.integer  "score"
    t.integer  "case_id"
    t.integer  "user_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "twitter"
    t.string   "password_digest"
    t.integer  "num_best_solutions"
    t.integer  "score_total"
    t.string   "uid"
    t.string   "provider"
    t.string   "nickname"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
