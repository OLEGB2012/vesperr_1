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

ActiveRecord::Schema.define(version: 2021_05_05_180541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_us_sections", force: :cascade do |t|
    t.bigint "section_id"
    t.text "left_side"
    t.text "right_side"
    t.integer "happy_clients_counter"
    t.integer "projects_counter"
    t.integer "years_counter"
    t.integer "awards_counter"
    t.string "happy_clients_text"
    t.string "projects_text"
    t.string "years_text"
    t.string "awards_text"
    t.string "happy_clients_class"
    t.string "projects_class"
    t.string "years_class"
    t.string "awards_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_about_us_sections_on_section_id"
  end

  create_table "capabilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.bigint "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_clients_on_section_id"
  end

  create_table "faq_items", force: :cascade do |t|
    t.bigint "faq_section_id"
    t.integer "position"
    t.string "question"
    t.text "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faq_section_id"], name: "index_faq_items_on_faq_section_id"
  end

  create_table "faq_sections", force: :cascade do |t|
    t.bigint "section_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_faq_sections_on_section_id"
  end

  create_table "feature_items", force: :cascade do |t|
    t.bigint "feature_section_id"
    t.integer "position"
    t.string "header"
    t.string "icon_class"
    t.string "style_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_section_id"], name: "index_feature_items_on_feature_section_id"
  end

  create_table "feature_sections", force: :cascade do |t|
    t.bigint "section_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_feature_sections_on_section_id"
  end

  create_table "grid_service_items", force: :cascade do |t|
    t.bigint "service_section_id"
    t.integer "position"
    t.string "header"
    t.string "description"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_section_id"], name: "index_grid_service_items_on_service_section_id"
  end

  create_table "horizon_service_items", force: :cascade do |t|
    t.bigint "service_section_id"
    t.integer "position"
    t.string "header"
    t.string "description"
    t.string "icon_class"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_section_id"], name: "index_horizon_service_items_on_service_section_id"
  end

  create_table "portfolio_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolio_items", force: :cascade do |t|
    t.bigint "portfolio_section_id"
    t.integer "position"
    t.bigint "portfolio_category_id"
    t.string "client_name"
    t.date "project_date"
    t.string "project_url"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.index ["portfolio_category_id"], name: "index_portfolio_items_on_portfolio_category_id"
    t.index ["portfolio_section_id"], name: "index_portfolio_items_on_portfolio_section_id"
  end

  create_table "portfolio_sections", force: :cascade do |t|
    t.bigint "section_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_portfolio_sections_on_section_id"
  end

  create_table "pricing_capabilities", force: :cascade do |t|
    t.bigint "pricing_item_id"
    t.integer "position"
    t.bigint "capability_id"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["capability_id"], name: "index_pricing_capabilities_on_capability_id"
    t.index ["pricing_item_id"], name: "index_pricing_capabilities_on_pricing_item_id"
  end

  create_table "pricing_items", force: :cascade do |t|
    t.bigint "pricing_section_id"
    t.integer "position"
    t.string "name"
    t.decimal "price", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "recommended"
    t.string "data_aos"
    t.string "data_aos_delay"
    t.index ["pricing_section_id"], name: "index_pricing_items_on_pricing_section_id"
  end

  create_table "pricing_sections", force: :cascade do |t|
    t.bigint "section_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_pricing_sections_on_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.bigint "setting_id"
    t.integer "position"
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "partial_name"
    t.index ["setting_id"], name: "index_sections_on_setting_id"
  end

  create_table "service_sections", force: :cascade do |t|
    t.bigint "section_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_service_sections_on_section_id"
  end

  create_table "settings", force: :cascade do |t|
    t.string "name"
    t.string "slogan_basic"
    t.string "slogan_additional"
    t.string "get_started"
    t.string "call_to_action"
    t.string "address"
    t.string "email"
    t.string "phone"
    t.string "twitter_url"
    t.string "facebook_url"
    t.string "instagram_url"
    t.string "linkedin_url"
    t.text "privacy_policy"
    t.text "terms_of_use"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_items", force: :cascade do |t|
    t.bigint "team_section_id"
    t.integer "position"
    t.string "name"
    t.string "occupation"
    t.string "twitter_url"
    t.string "facebook_url"
    t.string "instagram_url"
    t.string "linkedin_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_section_id"], name: "index_team_items_on_team_section_id"
  end

  create_table "team_sections", force: :cascade do |t|
    t.bigint "section_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_team_sections_on_section_id"
  end

  create_table "testimonial_items", force: :cascade do |t|
    t.bigint "testimonial_section_id"
    t.integer "position"
    t.string "author"
    t.string "occupation"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["testimonial_section_id"], name: "index_testimonial_items_on_testimonial_section_id"
  end

  create_table "testimonial_sections", force: :cascade do |t|
    t.bigint "section_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_testimonial_sections_on_section_id"
  end

  add_foreign_key "about_us_sections", "sections"
  add_foreign_key "clients", "sections"
  add_foreign_key "faq_items", "faq_sections"
  add_foreign_key "faq_sections", "sections"
  add_foreign_key "feature_items", "feature_sections"
  add_foreign_key "feature_sections", "sections"
  add_foreign_key "grid_service_items", "service_sections"
  add_foreign_key "horizon_service_items", "service_sections"
  add_foreign_key "portfolio_items", "portfolio_categories"
  add_foreign_key "portfolio_items", "portfolio_sections"
  add_foreign_key "portfolio_sections", "sections"
  add_foreign_key "pricing_capabilities", "capabilities"
  add_foreign_key "pricing_capabilities", "pricing_items"
  add_foreign_key "pricing_items", "pricing_sections"
  add_foreign_key "pricing_sections", "sections"
  add_foreign_key "sections", "settings"
  add_foreign_key "service_sections", "sections"
  add_foreign_key "team_items", "team_sections"
  add_foreign_key "team_sections", "sections"
  add_foreign_key "testimonial_items", "testimonial_sections"
  add_foreign_key "testimonial_sections", "sections"
end
