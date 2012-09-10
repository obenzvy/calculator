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

ActiveRecord::Schema.define(:version => 20120905203001) do

  create_table "cards", :force => true do |t|
    t.integer  "issuer_id"
    t.string   "name"
    t.string   "rewards_type"
    t.float    "general_rate"
    t.integer  "threshold_amount"
    t.float    "threshold_rate"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "issuers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rewards", :force => true do |t|
    t.string   "name"
    t.integer  "card_id"
    t.date     "start_period"
    t.date     "end_period"
    t.float    "reward_rate"
    t.integer  "reward_limit"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end