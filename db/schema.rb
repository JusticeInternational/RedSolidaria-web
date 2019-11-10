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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_10_191959) do

  create_table "service_points", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Service_Point_ID"
    t.date "Created_Date_Time"
    t.date "Last_Modification_Date_Time"
    t.string "Service_Point_Name"
    t.integer "Contact_User_Profile_ID"
    t.integer "Admin_User_Profile_ID"
    t.string "Address_Street_1"
    t.string "Address_Street_2"
    t.string "City"
    t.string "Country"
    t.float "Longitude"
    t.float "Latitude"
    t.string "Services_Available"
    t.string "Infrastructure_Type"
    t.integer "Overall_Capacity"
    t.integer "Overall_Rating"
    t.boolean "Promoted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Service_Point_ID"], name: "index_service_points_on_Service_Point_ID", unique: true
  end

  create_table "versions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "major"
    t.integer "minor"
    t.integer "patch"
    t.string "value"
    t.datetime "created"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
