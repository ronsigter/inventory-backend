# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_08_054300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delivery_people", force: :cascade do |t|
    t.integer "invoice_id"
    t.string "first_name"
    t.string "last_name"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "invoice_number"
    t.integer "user_id"
    t.integer "store_id"
    t.integer "orders_id"
    t.integer "delivery_person_id"
    t.integer "sales_person_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "product_id"
    t.integer "invoice_id"
    t.float "quantity_bought"
    t.float "price"
    t.float "total"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.float "quantity"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "invoice_id"
  end

  create_table "sales_people", force: :cascade do |t|
    t.integer "invoice_id"
    t.string "first_name"
    t.string "last_name"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
