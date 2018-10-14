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

ActiveRecord::Schema.define(version: 2018_10_14_062031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "name"
    t.bigint "element_id"
    t.bigint "group_action_id"
    t.integer "position"
    t.integer "action_type"
    t.text "action_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["element_id"], name: "index_actions_on_element_id"
    t.index ["group_action_id"], name: "index_actions_on_group_action_id"
  end

  create_table "elements", force: :cascade do |t|
    t.string "name"
    t.integer "selector_type"
    t.text "selector_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_actions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scenario_actions", force: :cascade do |t|
    t.bigint "scenario_id"
    t.bigint "action_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action_id"], name: "index_scenario_actions_on_action_id"
    t.index ["scenario_id"], name: "index_scenario_actions_on_scenario_id"
  end

  create_table "scenarios", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_action_results", force: :cascade do |t|
    t.bigint "scenario_id"
    t.bigint "scenario_action_id"
    t.bigint "test_report_id"
    t.text "message"
    t.integer "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scenario_action_id"], name: "index_test_action_results_on_scenario_action_id"
    t.index ["scenario_id"], name: "index_test_action_results_on_scenario_id"
    t.index ["test_report_id"], name: "index_test_action_results_on_test_report_id"
  end

  create_table "test_reports", force: :cascade do |t|
    t.bigint "scenario_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scenario_id"], name: "index_test_reports_on_scenario_id"
  end

  add_foreign_key "actions", "elements"
  add_foreign_key "actions", "group_actions"
  add_foreign_key "scenario_actions", "actions"
  add_foreign_key "scenario_actions", "scenarios"
  add_foreign_key "test_action_results", "scenario_actions"
  add_foreign_key "test_action_results", "scenarios"
  add_foreign_key "test_action_results", "test_reports"
  add_foreign_key "test_reports", "scenarios"
end
