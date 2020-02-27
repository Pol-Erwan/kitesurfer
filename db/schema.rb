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

ActiveRecord::Schema.define(version: 2020_02_24_111305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "intro"
    t.string "resume"
    t.string "author"
    t.string "title2"
    t.string "title3"
    t.string "content"
    t.string "domain"
    t.string "description"
    t.string "youtube"
    t.string "link"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "options", force: :cascade do |t|
    t.bigint "product_id"
    t.string "detail"
    t.string "range"
    t.string "bridle"
    t.string "fin"
    t.string "width"
    t.string "stance"
    t.string "champs"
    t.string "weigh"
    t.string "carene"
    t.string "flex"
    t.string "length"
    t.string "maitrebau"
    t.string "thickness"
    t.string "volum"
    t.string "trim"
    t.string "twist"
    t.string "line"
    t.string "v"
    t.integer "velcros"
    t.string "box"
    t.integer "strut"
    t.string "zip"
    t.string "bar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_options_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "option_id"
    t.bigint "technic_id"
    t.string "name"
    t.string "brand"
    t.string "category"
    t.string "domain"
    t.string "description"
    t.string "favorite"
    t.string "testsize"
    t.string "youtube"
    t.string "link"
    t.integer "price"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["option_id"], name: "index_products_on_option_id"
    t.index ["technic_id"], name: "index_products_on_technic_id"
  end

  create_table "technics", force: :cascade do |t|
    t.bigint "product_id"
    t.integer "wave"
    t.integer "bigair"
    t.integer "freeride"
    t.integer "freestyle"
    t.integer "maniability"
    t.integer "feeling"
    t.integer "control"
    t.integer "progression"
    t.integer "courbes"
    t.integer "wind"
    t.integer "sideshore"
    t.integer "onshore"
    t.integer "strap"
    t.integer "strapless"
    t.integer "transitions"
    t.integer "wing"
    t.integer "pad"
    t.integer "grip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_technics_on_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "is_admin"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
