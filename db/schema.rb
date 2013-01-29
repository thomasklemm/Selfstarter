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

ActiveRecord::Schema.define(:version => 20130129210120) do

  create_table "backings", :force => true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "backings", ["project_id"], :name => "index_backings_on_project_id"
  add_index "backings", ["user_id"], :name => "index_backings_on_user_id"

  create_table "kickbacks", :force => true do |t|
    t.integer  "backing_id"
    t.integer  "reward_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "kickbacks", ["backing_id"], :name => "index_kickbacks_on_backing_id"
  add_index "kickbacks", ["reward_id"], :name => "index_kickbacks_on_reward_id"

  create_table "memberships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "concerns"
    t.text     "location"
    t.text     "description"
  end

  add_index "memberships", ["team_id"], :name => "index_memberships_on_team_id"
  add_index "memberships", ["user_id"], :name => "index_memberships_on_user_id"

  create_table "projects", :force => true do |t|
    t.text     "title"
    t.text     "description"
    t.text     "slug"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "team_id"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.text     "subtitle"
  end

  add_index "projects", ["slug"], :name => "index_projects_on_slug", :unique => true
  add_index "projects", ["team_id"], :name => "index_projects_on_team_id"

  create_table "rewards", :force => true do |t|
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rewards", ["project_id"], :name => "index_rewards_on_project_id"

  create_table "teams", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "name"
    t.text     "location"
    t.text     "pitch"
    t.text     "description"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.text     "full_name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
