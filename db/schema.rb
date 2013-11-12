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

ActiveRecord::Schema.define(:version => 20130710144535) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "course_programmes", :force => true do |t|
    t.string   "course_sgid"
    t.integer  "programme_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "course_staffs", :force => true do |t|
    t.string   "course_sgid"
    t.integer  "staff_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "acode"
    t.string   "code"
    t.string   "sgid"
    t.string   "name"
    t.integer  "ects"
    t.string   "year"
    t.string   "period"
    t.string   "institute"
    t.text     "description"
    t.text     "timetable"
    t.text     "lecture_material"
    t.text     "goals"
    t.text     "participant_count"
    t.text     "specialities"
    t.text     "examination"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "line_items", :force => true do |t|
    t.string   "course_sgid"
    t.integer  "cart_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "order_id"
  end

  create_table "orders", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "pay_type"
    t.string   "telephone"
    t.text     "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "programmes", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "staff_lists", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "staffs", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
