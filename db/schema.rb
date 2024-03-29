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

ActiveRecord::Schema.define(:version => 20120430184513) do

  create_table "guests", :force => true do |t|
    t.integer  "party_id"
    t.string   "name"
    t.string   "email"
    t.string   "invite_code"
    t.integer  "expected_attendees"
    t.integer  "actual_attendees"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "guests", ["email"], :name => "index_guests_on_email", :unique => true

  create_table "hosts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "encrypted_password"
    t.string   "salt"
  end

  add_index "hosts", ["email"], :name => "index_hosts_on_email", :unique => true

  create_table "partyms", :force => true do |t|
    t.integer  "host_id"
    t.string   "name"
    t.date     "date"
    t.string   "location"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "description"
    t.date     "rsvp_date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
