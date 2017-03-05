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

ActiveRecord::Schema.define(version: 20170226165452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type", using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "domain"
    t.string   "redirect_url"
    t.string   "locale"
    t.integer  "default_review"
    t.integer  "review_threshold"
    t.datetime "deleted_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_companies_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true, using: :btree
  end

  create_table "coupons", force: :cascade do |t|
    t.float    "discount"
    t.integer  "discount_type"
    t.string   "coupon_photo_file_name"
    t.string   "coupon_photo_content_type"
    t.integer  "coupon_photo_file_size"
    t.datetime "coupon_photo_updated_at"
    t.datetime "expiration_date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "landing_pages", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "background_color"
    t.integer  "company_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "storefront_photo_file_name"
    t.string   "storefront_photo_content_type"
    t.integer  "storefront_photo_file_size"
    t.datetime "storefront_photo_updated_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "type"
    t.text     "company_message"
    t.text     "positive_message"
    t.text     "negative_message"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "review_companies", force: :cascade do |t|
    t.string   "name"
    t.string   "example"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_sites", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "review_company_id"
    t.string   "url"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "reviewer"
    t.string   "email"
    t.string   "phone"
    t.string   "employee_name"
    t.float    "stars"
    t.text     "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
