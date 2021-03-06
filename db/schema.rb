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

ActiveRecord::Schema.define(version: 20150813193336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "agent_id"
    t.string   "address_type"
    t.string   "line_1"
    t.string   "line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "line_3"
    t.boolean  "same_as_office",   default: false
    t.float    "office_latitude"
    t.float    "office_longitude"
  end

  add_index "addresses", ["address_type"], name: "index_addresses_on_address_type", using: :btree
  add_index "addresses", ["agent_id"], name: "index_addresses_on_agent_id", using: :btree

  create_table "agents", force: :cascade do |t|
    t.boolean  "registered",     default: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "suffix"
    t.string   "license_number"
    t.string   "license_type"
    t.string   "license_county"
    t.string   "phone_number"
    t.string   "fax_number"
    t.string   "email"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "slug"
  end

  add_index "agents", ["slug"], name: "index_agents_on_slug", using: :btree

  create_table "biographies", force: :cascade do |t|
    t.integer  "agent_id"
    t.string   "title"
    t.string   "short_bio"
    t.text     "long_bio"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "biographies", ["agent_id"], name: "index_biographies_on_agent_id", using: :btree

  create_table "brokers", force: :cascade do |t|
    t.integer  "agent_id"
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_line_3"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone_number"
    t.string   "fax_number"
    t.string   "email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "brokers", ["agent_id"], name: "index_brokers_on_agent_id", using: :btree

  create_table "certifications", force: :cascade do |t|
    t.integer  "agent_id"
    t.string   "certification_type", null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "certifications", ["agent_id"], name: "index_certifications_on_agent_id", using: :btree
  add_index "certifications", ["certification_type"], name: "index_certifications_on_certification_type", using: :btree

  create_table "guides", force: :cascade do |t|
    t.integer  "agent_id"
    t.string   "guide_type"
    t.string   "guide_title"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "guides", ["agent_id"], name: "index_guides_on_agent_id", using: :btree

  create_table "listings", force: :cascade do |t|
    t.integer  "agent_id"
    t.string   "mls_number"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "listings", ["agent_id"], name: "index_listings_on_agent_id", using: :btree
  add_index "listings", ["mls_number"], name: "index_listings_on_mls_number", using: :btree

  create_table "social_links", force: :cascade do |t|
    t.integer  "agent_id"
    t.string   "site"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
  end

  add_index "social_links", ["agent_id"], name: "index_social_links_on_agent_id", using: :btree

  create_table "team_members", force: :cascade do |t|
    t.integer  "team_id"
    t.string   "full_name"
    t.text     "bio"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "team_members", ["team_id"], name: "index_team_members_on_team_id", using: :btree

  create_table "team_openings", force: :cascade do |t|
    t.integer  "team_id"
    t.string   "position_title"
    t.text     "position_description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "team_openings", ["team_id"], name: "index_team_openings_on_team_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.integer  "agent_id"
    t.boolean  "primary_agent",  default: true
    t.boolean  "hiring",         default: false
    t.string   "hiring_title"
    t.text     "hiring_details"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "teams", ["agent_id"], name: "index_teams_on_agent_id", using: :btree

  create_table "testimonials", force: :cascade do |t|
    t.integer  "agent_id"
    t.string   "client_name"
    t.text     "text"
    t.string   "client_facebook_link"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "testimonials", ["agent_id"], name: "index_testimonials_on_agent_id", using: :btree

  create_table "themes", force: :cascade do |t|
    t.integer  "agent_id"
    t.string   "tagline"
    t.string   "background_color",           default: "#ffffff"
    t.string   "font_color",                 default: "#000000"
    t.string   "button_color",               default: "#930b12"
    t.string   "font",                       default: "helvetica"
    t.string   "testimonial_page_title"
    t.text     "testimonial_page_main_copy"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "link_page_title"
    t.text     "link_page_main_copy"
    t.string   "domain_name"
    t.boolean  "forward_url",                default: false
    t.string   "site_title"
    t.string   "site_subtitle"
    t.string   "button_text_color",          default: "#ffffff"
    t.string   "team_page_title"
    t.text     "team_page_description"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "listing_page_title"
    t.text     "listing_page_main_copy"
  end

  add_index "themes", ["agent_id"], name: "index_themes_on_agent_id", using: :btree

  add_foreign_key "certifications", "agents"
  add_foreign_key "team_members", "teams"
  add_foreign_key "teams", "agents"
  add_foreign_key "testimonials", "agents"
  add_foreign_key "themes", "agents"
end
