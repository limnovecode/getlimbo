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

ActiveRecord::Schema.define(version: 20160204224720) do

  create_table "span_administrators", force: :cascade do |t|
    t.string   "slug"
    t.string   "email"
    t.string   "username"
    t.string   "name"
    t.string   "surname"
    t.string   "password_digest"
    t.string   "authentication_token"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean  "sudo",                   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "span_administrators", ["slug"], name: "index_span_administrators_on_slug"

  create_table "span_billboards", force: :cascade do |t|
    t.string   "slug"
    t.string   "title"
    t.text     "description"
    t.string   "path"
    t.string   "namepath"
    t.string   "imagebox"
    t.integer  "position"
    t.boolean  "published",   default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "span_billboards", ["slug"], name: "index_span_billboards_on_slug"

  create_table "span_biographies", force: :cascade do |t|
    t.string   "slug"
    t.string   "title"
    t.text     "description"
    t.text     "body"
    t.string   "imagebox"
    t.boolean  "published",       default: false
    t.string   "seo_title"
    t.text     "seo_description"
    t.string   "seo_tags"
    t.string   "seo_imagebox"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "span_biographies", ["slug"], name: "index_span_biographies_on_slug"

  create_table "span_contact_settings", force: :cascade do |t|
    t.string   "slug"
    t.string   "seo_title"
    t.text     "seo_description"
    t.string   "seo_tags"
    t.string   "seo_imagebox"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "span_contact_settings", ["slug"], name: "index_span_contact_settings_on_slug"

  create_table "span_contacts", force: :cascade do |t|
    t.string   "slug"
    t.string   "title"
    t.string   "name"
    t.string   "surname"
    t.string   "address"
    t.string   "country"
    t.string   "city"
    t.string   "postcode"
    t.string   "fax"
    t.string   "phone"
    t.string   "mobile"
    t.string   "email"
    t.string   "path"
    t.string   "namepath"
    t.string   "imagebox"
    t.integer  "position"
    t.boolean  "published",       default: false
    t.string   "seo_title"
    t.text     "seo_description"
    t.string   "seo_tags"
    t.string   "seo_imagebox"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "span_contacts", ["slug"], name: "index_span_contacts_on_slug"

  create_table "span_networks", force: :cascade do |t|
    t.string   "slug"
    t.string   "title"
    t.string   "path"
    t.string   "namepath"
    t.integer  "position"
    t.boolean  "published",  default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "span_networks", ["slug"], name: "index_span_networks_on_slug"

  create_table "span_settings", force: :cascade do |t|
    t.string   "slug"
    t.string   "sitemapbox"
    t.string   "documentbox"
    t.boolean  "published",       default: false
    t.string   "seo_title"
    t.text     "seo_description"
    t.string   "seo_tags"
    t.string   "seo_imagebox"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "span_settings", ["slug"], name: "index_span_settings_on_slug"

  create_table "span_timeline_settings", force: :cascade do |t|
    t.string   "slug"
    t.string   "seo_title"
    t.text     "seo_description"
    t.string   "seo_tags"
    t.string   "seo_imagebox"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "span_timeline_settings", ["slug"], name: "index_span_timeline_settings_on_slug"

  create_table "span_timelines", force: :cascade do |t|
    t.string   "slug"
    t.string   "title"
    t.text     "description"
    t.string   "start"
    t.string   "end"
    t.string   "imagebox"
    t.integer  "position"
    t.boolean  "published",       default: false
    t.string   "seo_title"
    t.text     "seo_description"
    t.string   "seo_tags"
    t.string   "seo_imagebox"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "span_timelines", ["slug"], name: "index_span_timelines_on_slug"

end
