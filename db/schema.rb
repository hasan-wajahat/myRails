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

ActiveRecord::Schema.define(version: 20160828102619) do

  create_table "recipe_lists", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "recipe_name", limit: 50
    t.string   "category",    limit: 25
    t.integer  "chef_id"
    t.text     "details",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["recipe_name", "category", "chef_id"], name: "index_recipe_lists_on_recipe_name_and_category_and_chef_id", using: :btree
  end

  create_table "recipes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "recipe_list_id"
    t.string   "recipe_name",    limit: 50
    t.text     "ingredients",    limit: 65535
    t.text     "recipe",         limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["recipe_name", "recipe_list_id"], name: "index_recipes_on_recipe_name_and_recipe_list_id", using: :btree
  end

end
