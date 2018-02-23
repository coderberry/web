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

ActiveRecord::Schema.define(version: 2018_02_22_224508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "campaigns", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.string "name", default: "", null: false
    t.text "description"
    t.integer "daily_budget_cents", default: 0, null: false
    t.integer "monthly_budget_cents", default: 0, null: false
    t.integer "total_budget_cents", default: 0, null: false
    t.integer "bid_amount_cents", default: 0, null: false
    t.text "redirect_url", default: "", null: false
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "clicks", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "sponsorship_id"
    t.uuid "property_id"
    t.uuid "developer_id", null: false
    t.uuid "sponsor_id", null: false
    t.string "ip"
    t.text "user_agent"
    t.text "referrer"
    t.text "landing_page"
    t.string "referring_domain"
    t.string "search_keyword"
    t.string "browser"
    t.string "os"
    t.string "device_type"
    t.integer "screen_height"
    t.integer "screen_width"
    t.string "country"
    t.string "region"
    t.string "city"
    t.string "postal_code"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_term"
    t.string "utm_content"
    t.string "utm_campaign"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_clicks_on_developer_id"
    t.index ["ip"], name: "index_clicks_on_ip"
    t.index ["property_id"], name: "index_clicks_on_property_id"
    t.index ["sponsor_id"], name: "index_clicks_on_sponsor_id"
    t.index ["sponsorship_id"], name: "index_clicks_on_sponsorship_id"
  end

  create_table "impressions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "sponsorship_id"
    t.uuid "property_id"
    t.uuid "developer_id", null: false
    t.uuid "sponsor_id", null: false
    t.string "ip"
    t.text "user_agent"
    t.string "browser"
    t.string "os"
    t.string "device_type"
    t.integer "screen_height"
    t.integer "screen_width"
    t.string "country"
    t.string "region"
    t.string "city"
    t.string "postal_code"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_term"
    t.string "utm_content"
    t.string "utm_campaign"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_impressions_on_developer_id"
    t.index ["ip"], name: "index_impressions_on_ip"
    t.index ["property_id"], name: "index_impressions_on_property_id"
    t.index ["sponsor_id"], name: "index_impressions_on_sponsor_id"
    t.index ["sponsorship_id"], name: "index_impressions_on_sponsorship_id"
  end

  create_table "properties", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.string "name", default: "", null: false
    t.string "url", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "sponsorships", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "property_id"
    t.uuid "campaign_id"
    t.string "token", null: false
    t.integer "bid_amount_cents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_sponsorships_on_campaign_id"
    t.index ["property_id"], name: "index_sponsorships_on_property_id"
    t.index ["token"], name: "index_sponsorships_on_token", unique: true
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "region"
    t.string "postal_code"
    t.string "country"
    t.string "roles", default: [], null: false, array: true
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["roles"], name: "index_users_on_roles", using: :gin
  end

  add_foreign_key "campaigns", "users"
  add_foreign_key "clicks", "properties"
  add_foreign_key "clicks", "sponsorships"
  add_foreign_key "impressions", "properties"
  add_foreign_key "impressions", "sponsorships"
  add_foreign_key "properties", "users"
  add_foreign_key "sponsorships", "campaigns"
  add_foreign_key "sponsorships", "properties"
end
