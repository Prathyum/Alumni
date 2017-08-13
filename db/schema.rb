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

ActiveRecord::Schema.define(version: 20170810175046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.integer "question_id"
    t.index ["question_id"], name: "index_comments_on_question_id"
    t.index ["student_id"], name: "index_comments_on_student_id"
  end

  create_table "forms", force: :cascade do |t|
    t.string "current"
    t.boolean "is_placed"
    t.string "comname"
    t.string "comaddr"
    t.string "desig"
    t.integer "exp"
    t.string "univ"
    t.string "course"
    t.string "mobile"
    t.string "curmail"
    t.string "linked_id"
    t.string "contribute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.integer "userid"
    t.string "univaddr"
    t.string "govtsector"
    t.string "address"
    t.string "entcompany"
    t.string "entdesignation"
    t.string "workmail"
    t.string "workfield"
    t.string "fieldofwork"
    t.integer "courseduration"
    t.integer "expyear"
    t.integer "noofemployees"
    t.string "annualturnover"
    t.string "Field"
    t.string "otherfield"
    t.string "othercompany"
    t.string "otherdesignation"
    t.string "otheraddress"
    t.string "website"
    t.string "govtdesig"
    t.string "govtadd"
    t.string "govtphone"
    t.string "street_address"
    t.string "suite_apt"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.string "phone"
    t.text "full_address"
    t.string "workapt"
    t.string "workstreet"
    t.string "workcity"
    t.string "workzip"
    t.string "workstate"
    t.string "entcity"
    t.string "entstate"
    t.string "entstreet"
    t.string "entapt"
    t.string "entzip"
    t.string "univapt"
    t.string "univcity"
    t.string "univstreet"
    t.string "univstate"
    t.string "univzip"
    t.string "govtapt"
    t.string "govtstate"
    t.string "govtstreet"
    t.string "govtZip"
    t.string "govtcity"
    t.string "otherstate"
    t.string "otherstreet"
    t.string "otherzip"
    t.string "otherapt"
    t.string "othercity"
    t.string "workcountry"
    t.string "govtcountry"
    t.string "entcountry"
    t.string "highercountry"
    t.string "othercountry"
    t.string "apt"
    t.string "street"
    t.string "State"
    t.string "City"
    t.string "Zip"
    t.string "Country"
    t.string "major"
  end

  create_table "questions", force: :cascade do |t|
    t.string "tile"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.index ["student_id"], name: "index_questions_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "stuname"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
    t.index ["stuname"], name: "index_students_on_stuname", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.date "dob"
    t.string "rollno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string "votable_type"
    t.bigint "votable_id"
    t.string "voter_type"
    t.bigint "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
    t.index ["voter_type", "voter_id"], name: "index_votes_on_voter_type_and_voter_id"
  end

end
