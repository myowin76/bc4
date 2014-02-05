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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140205175124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bctips", force: true do |t|
    t.string   "title"
    t.text     "intro"
    t.text     "body"
    t.boolean  "showon_admin_dashboard"
    t.boolean  "showon_wed_dashboard"
    t.date     "publish_from"
    t.date     "publish_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "best_practice_links", force: true do |t|
    t.integer  "best_practice_id"
    t.string   "caption"
    t.datetime "created_by"
    t.datetime "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "best_practice_links", ["best_practice_id"], name: "index_best_practice_links_on_best_practice_id", using: :btree

  create_table "best_practices", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "best_practices", ["company_id"], name: "index_best_practices_on_company_id", using: :btree

  create_table "commentaries", force: true do |t|
    t.integer  "country_id"
    t.string   "title"
    t.text     "intro"
    t.text     "body"
    t.boolean  "showon_admin_dashboard"
    t.boolean  "showon_wed_dashboard"
    t.date     "publish_from"
    t.date     "publish_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "commentaries", ["country_id"], name: "index_commentaries_on_country_id", using: :btree

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.date     "renew_date"
    t.integer  "company_type_id"
    t.integer  "company_status_id"
    t.integer  "sector_id"
    t.integer  "country_id"
    t.integer  "reports_count"
    t.integer  "users_count"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "subscription_id"
  end

  add_index "companies", ["company_status_id"], name: "index_companies_on_company_status_id", using: :btree
  add_index "companies", ["company_type_id"], name: "index_companies_on_company_type_id", using: :btree
  add_index "companies", ["country_id"], name: "index_companies_on_country_id", using: :btree
  add_index "companies", ["sector_id"], name: "index_companies_on_sector_id", using: :btree

  create_table "company_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "login_histories", force: true do |t|
    t.integer  "user_id"
    t.datetime "sign_in_at"
    t.string   "sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "login_histories", ["user_id"], name: "index_login_histories_on_user_id", using: :btree

  create_table "metrics", force: true do |t|
    t.string   "name"
    t.integer  "number"
    t.integer  "score"
    t.integer  "report_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
  end

  create_table "newsletters", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "job_title"
    t.integer  "country_id"
    t.string   "website"
    t.boolean  "bc_tip"
    t.boolean  "wen"
    t.boolean  "specials"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "newsletters", ["country_id"], name: "index_newsletters_on_country_id", using: :btree

  create_table "notes", force: true do |t|
    t.text     "note"
    t.integer  "note_source_id"
    t.string   "note_source_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "report_id"
  end

  add_index "notes", ["note_source_id", "note_source_type"], name: "index_notes_on_note_source_id_and_note_source_type", using: :btree

  create_table "page_widgets", force: true do |t|
    t.integer  "page_id"
    t.integer  "widget_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_widgets", ["page_id"], name: "index_page_widgets_on_page_id", using: :btree
  add_index "page_widgets", ["widget_id"], name: "index_page_widgets_on_widget_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "name"
    t.date     "publish_date"
    t.boolean  "ft_index"
    t.boolean  "in_result_table"
    t.boolean  "can_compare"
    t.integer  "reports_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_states", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_types", force: true do |t|
    t.string   "name"
    t.boolean  "public"
    t.text     "notes"
    t.boolean  "exe_summary"
    t.boolean  "recommendation"
    t.boolean  "best_practice"
    t.boolean  "supplementary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.integer  "company_id"
    t.integer  "report_type_id"
    t.date     "publish_date"
    t.boolean  "approved"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "report_state_id"
  end

  add_index "reports", ["company_id"], name: "index_reports_on_company_id", using: :btree
  add_index "reports", ["project_id"], name: "index_reports_on_project_id", using: :btree
  add_index "reports", ["report_type_id"], name: "index_reports_on_report_type_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", force: true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id"], name: "index_roles_users_on_role_id", using: :btree
  add_index "roles_users", ["user_id"], name: "index_roles_users_on_user_id", using: :btree

  create_table "screengrabs", force: true do |t|
    t.string   "caption"
    t.integer  "source_id"
    t.string   "source_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "screengrabs", ["source_id", "source_type"], name: "index_screengrabs_on_source_id_and_source_type", using: :btree

  create_table "sectors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "system_emails", force: true do |t|
    t.string   "name"
    t.string   "from"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_peer_companies", force: true do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_peer_companies", ["company_id"], name: "index_user_peer_companies_on_company_id", using: :btree
  add_index "user_peer_companies", ["user_id"], name: "index_user_peer_companies_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "job_title"
    t.boolean  "super_user"
    t.boolean  "approver"
    t.boolean  "dashboard_alerts"
    t.boolean  "active"
    t.boolean  "deleted"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.integer  "role_id"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree

  create_table "web_pages", force: true do |t|
    t.string   "meta_title"
    t.string   "meta_desc"
    t.string   "meta_keyword"
    t.string   "name"
    t.string   "page_title"
    t.text     "page_intro"
    t.string   "url"
    t.text     "body"
    t.string   "ancestry"
    t.integer  "position"
    t.boolean  "published"
    t.boolean  "hide_on_nav"
    t.string   "content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "web_widgets", force: true do |t|
    t.string   "name"
    t.string   "theme"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
