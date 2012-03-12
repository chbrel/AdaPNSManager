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

ActiveRecord::Schema.define(:version => 20120311234600) do

  create_table "addresses", :force => true do |t|
    t.string   "address1",   :limit => 100, :default => "", :null => false
    t.string   "address2",   :limit => 100
    t.string   "address3",   :limit => 100
    t.string   "zipcode",    :limit => 15
    t.string   "city",       :limit => 60
    t.integer  "country_id"
    t.datetime "created_id"
    t.datetime "updated_id"
  end

  add_index "addresses", ["country_id"], :name => "addresses_country_id"

  create_table "companies", :force => true do |t|
    t.string   "name",         :limit => 60,  :default => "", :null => false
    t.integer  "address_id",                                  :null => false
    t.string   "ape_code",     :limit => 45
    t.string   "url",          :limit => 100
    t.string   "phone_number", :limit => 45
    t.string   "fax_number",   :limit => 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["address_id"], :name => "companies_address_id"

  create_table "countries", :force => true do |t|
    t.string "name", :limit => 45
  end

  create_table "emails", :force => true do |t|
    t.integer  "graduate_id",                                  :null => false
    t.string   "type",        :limit => 0,  :default => "",    :null => false
    t.string   "email",       :limit => 60, :default => "",    :null => false
    t.boolean  "diffusion",                 :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emails", ["graduate_id"], :name => "emails_graduate_id"

  create_table "experiences", :force => true do |t|
    t.integer  "graduate_id",                                :null => false
    t.string   "type",        :limit => 0,   :default => "", :null => false
    t.date     "start_date",                                 :null => false
    t.date     "end_date"
    t.integer  "company_id",                                 :null => false
    t.text     "comment"
    t.string   "post",        :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiences", ["company_id"], :name => "experiences_company_id"
  add_index "experiences", ["graduate_id"], :name => "experiences_graduate_id"

  create_table "firstjobs", :force => true do |t|
    t.integer  "graduate_id",                     :null => false
    t.string   "salary",            :limit => 45
    t.string   "firstjob_duration", :limit => 45
    t.boolean  "looking_for_job"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "firstjobs", ["graduate_id"], :name => "firstjobs_graduate_id"

  create_table "graduates", :force => true do |t|
    t.integer  "user_id",                                              :null => false
    t.string   "student_id",     :limit => 10, :default => "00000000", :null => false
    t.string   "lastname",       :limit => 45, :default => "",         :null => false
    t.string   "maiden_name",    :limit => 45
    t.string   "firstname",      :limit => 45, :default => "",         :null => false
    t.string   "sex",            :limit => 0
    t.date     "birthday"
    t.date     "date_of_death"
    t.string   "photo"
    t.string   "cnisf_id",       :limit => 8,  :default => "",         :null => false
    t.string   "cnisf_password", :limit => 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "graduates", ["cnisf_id"], :name => "cnisf_id_UNIQUE", :unique => true
  add_index "graduates", ["user_id"], :name => "graduates_user_id"

  create_table "phones", :force => true do |t|
    t.integer  "graduate_id",                                   :null => false
    t.string   "type",         :limit => 0,  :default => "",    :null => false
    t.string   "phone_number", :limit => 45, :default => "",    :null => false
    t.boolean  "diffusion",                  :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["graduate_id"], :name => "phones_graduate_id"

  create_table "polytechdiplomas", :force => true do |t|
    t.integer  "diploma_year",                                       :null => false
    t.integer  "polytechschool_id",                                  :null => false
    t.string   "type",                  :limit => 0, :default => "", :null => false
    t.integer  "polytechstudyfield_id",                              :null => false
    t.integer  "polytechoption_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "polytechdiplomas", ["polytechoption_id"], :name => "polytechdiplomas_polytechoption_id"
  add_index "polytechdiplomas", ["polytechschool_id"], :name => "polytechdiplomas_polytechschool_id"
  add_index "polytechdiplomas", ["polytechstudyfield_id"], :name => "polytechdiplomas_polytechstudyfield_id"

  create_table "polytechoptions", :force => true do |t|
    t.string   "short_name", :limit => 45, :default => "", :null => false
    t.string   "full_name",  :limit => 45, :default => "", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polytechschools", :force => true do |t|
    t.string   "short_name", :limit => 45, :default => "", :null => false
    t.string   "full_name",  :limit => 45, :default => "", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polytechstudyfields", :force => true do |t|
    t.string   "short_name", :limit => 45, :default => "", :null => false
    t.string   "full_name",  :limit => 45, :default => "", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polytechtrainings", :force => true do |t|
    t.integer "graduate_id",        :null => false
    t.integer "polytechdiploma_id", :null => false
  end

  add_index "polytechtrainings", ["graduate_id"], :name => "polytechtrainings_graduate_id"
  add_index "polytechtrainings", ["polytechdiploma_id"], :name => "polytechtrainings_polytechdiploma_id"

  create_table "subscriptions", :force => true do |t|
    t.integer  "graduate_id",                                :null => false
    t.integer  "year_number",                                :null => false
    t.string   "type",        :limit => 0,   :default => "", :null => false
    t.string   "description", :limit => 100, :default => "", :null => false
    t.date     "date",                                       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subscriptions", ["graduate_id"], :name => "subscriptions_graduate_id"

  create_table "trainings", :force => true do |t|
    t.integer  "graduate_id",                                 :null => false
    t.integer  "training_year",                               :null => false
    t.string   "school",        :limit => 45, :default => "", :null => false
    t.string   "diploma",       :limit => 45, :default => "", :null => false
    t.string   "studyfield",    :limit => 45
    t.string   "option",        :limit => 45
    t.string   "option_name",   :limit => 70
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trainings", ["graduate_id"], :name => "trainings_graduate_id"

  create_table "urls", :force => true do |t|
    t.integer  "graduate_id",                                :null => false
    t.string   "url",         :limit => 100, :default => "", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "urls", ["graduate_id"], :name => "urls_graduate_id"

  create_table "useraddresses", :force => true do |t|
    t.integer  "graduate_id",                                 :null => false
    t.integer  "address_id",                                  :null => false
    t.string   "type",        :limit => 0, :default => "",    :null => false
    t.boolean  "diffusion",                :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "useraddresses", ["address_id"], :name => "useraddresses_address_id"
  add_index "useraddresses", ["graduate_id"], :name => "useraddresses_graduate_id"

  create_table "users", :force => true do |t|
    t.string   "login",                  :limit => 45, :default => "",    :null => false
    t.boolean  "isAdmin",                              :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                :default => "",    :null => false
    t.string   "encrypted_password",                   :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
