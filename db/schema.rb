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

ActiveRecord::Schema.define(:version => 20140329155626) do

  create_table "opportunities", :force => true do |t|
    t.string   "name"
    t.string   "site_url"
    t.text     "description"
    t.integer  "skills_id"
    t.string   "level_exp"
    t.integer  "level_age_min"
    t.integer  "level_age_max"
    t.string   "cost"
    t.string   "address"
    t.float    "lat"
    t.float    "lon"
    t.boolean  "into_work"
    t.boolean  "girls_only"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "cost_min"
    t.string   "skills"
  end

  add_index "opportunities", ["skills_id"], :name => "index_opportunities_on_skills_id"

  create_table "opportunity_types", :force => true do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skill_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.integer  "skillCategory_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "skills", ["skillCategory_id"], :name => "index_skills_on_skillCategory_id"

end
