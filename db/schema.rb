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

ActiveRecord::Schema.define(:version => 20110118055605) do

  create_table "dimensions", :force => true do |t|
    t.integer "user_id"
    t.integer "width"
    t.integer "height"
    t.integer "top"
    t.integer "left"
    t.integer "bottom"
    t.integer "right"
  end

  add_index "dimensions", ["user_id"], :name => "index_dimensions_on_user_id", :unique => true

  create_table "letters", :force => true do |t|
    t.integer "user_id"
    t.string  "letter"
    t.string  "colour"
  end

  create_table "texts", :force => true do |t|
    t.integer "user_id"
    t.text    "text"
  end

  create_table "users", :force => true do |t|
    t.string "username"
  end

end
