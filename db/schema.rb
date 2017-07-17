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

ActiveRecord::Schema.define(version: 20170717192448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classes", force: :cascade do |t|
    t.date "year"
    t.integer "subject_id"
  end

  create_table "classes_students", id: false, force: :cascade do |t|
    t.bigint "class_id", null: false
    t.bigint "student_id", null: false
    t.float "first_term_mark"
    t.float "second_term_mark"
    t.float "final_mark"
    t.index ["class_id"], name: "index_classes_students_on_class_id"
    t.index ["student_id"], name: "index_classes_students_on_student_id"
  end

  create_table "marks", force: :cascade do |t|
    t.string "mark"
    t.boolean "approved"
    t.string "description"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  create_table "permissions_roles", id: false, force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "permission_id", null: false
    t.index ["permission_id"], name: "index_permissions_roles_on_permission_id"
    t.index ["role_id"], name: "index_permissions_roles_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.integer "school_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "grade"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.integer "school_id"
    t.integer "role_id"
  end

end
