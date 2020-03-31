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

ActiveRecord::Schema.define(version: 2020_03_31_064051) do

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

  create_table "countries", force: :cascade do |t|
    t.string "country_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customer_statuses", force: :cascade do |t|
    t.string "customer_status"
    t.string "customer_status_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customer_types", force: :cascade do |t|
    t.string "customer_type"
    t.string "customer_type_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customer_vehicles", force: :cascade do |t|
    t.string "year"
    t.string "color"
    t.string "license_plate_number"
    t.bigint "make_id", null: false
    t.bigint "vehicle_status_id", null: false
    t.bigint "state_province_id", null: false
    t.bigint "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customer_vehicles_on_customer_id"
    t.index ["make_id"], name: "index_customer_vehicles_on_make_id"
    t.index ["state_province_id"], name: "index_customer_vehicles_on_state_province_id"
    t.index ["vehicle_status_id"], name: "index_customer_vehicles_on_vehicle_status_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "dl_number"
    t.string "dl_state"
    t.string "cust_f_name"
    t.string "cust_m_initial"
    t.string "cust_l_name"
    t.string "company"
    t.string "cust_address"
    t.string "cust_city"
    t.string "zip_code"
    t.string "cust_phone"
    t.string "cust_email"
    t.date "dob"
    t.text "dl_picture"
    t.bigint "state_province_id", null: false
    t.bigint "country_id", null: false
    t.bigint "customer_status_id", null: false
    t.bigint "customer_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_customers_on_country_id"
    t.index ["customer_status_id"], name: "index_customers_on_customer_status_id"
    t.index ["customer_type_id"], name: "index_customers_on_customer_type_id"
    t.index ["state_province_id"], name: "index_customers_on_state_province_id"
  end

  create_table "dashboard_calculations", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_statuses", force: :cascade do |t|
    t.string "employee_status"
    t.string "employee_status_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_types", force: :cascade do |t|
    t.string "employee_type"
    t.string "employee_type_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "employee_first_name"
    t.string "employee_middle_initial"
    t.string "employee_last_name"
    t.string "phone_number"
    t.string "home_phone"
    t.date "dob"
    t.string "email_emp"
    t.string "emp_address"
    t.string "city"
    t.integer "zip"
    t.bigint "state_province_id", null: false
    t.bigint "country_id", null: false
    t.bigint "employee_type_id", null: false
    t.bigint "employee_status_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_employees_on_country_id"
    t.index ["employee_status_id"], name: "index_employees_on_employee_status_id"
    t.index ["employee_type_id"], name: "index_employees_on_employee_type_id"
    t.index ["state_province_id"], name: "index_employees_on_state_province_id"
  end

  create_table "invoice_statuses", force: :cascade do |t|
    t.string "invoice_status"
    t.string "invoice_status_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoice_types", force: :cascade do |t|
    t.string "invoice_type"
    t.string "invoice_type_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "invoice_number"
    t.datetime "invoice_date_time"
    t.text "material_image"
    t.bigint "customer_id", null: false
    t.bigint "employee_id", null: false
    t.bigint "invoice_type_id", null: false
    t.bigint "invoice_status_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "invoice_desc"
    t.decimal "total"
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
    t.index ["employee_id"], name: "index_invoices_on_employee_id"
    t.index ["invoice_status_id"], name: "index_invoices_on_invoice_status_id"
    t.index ["invoice_type_id"], name: "index_invoices_on_invoice_type_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.bigint "invoice_id", null: false
    t.bigint "metal_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_line_items_on_invoice_id"
    t.index ["metal_item_id"], name: "index_line_items_on_metal_item_id"
  end

  create_table "makes", force: :cascade do |t|
    t.string "make_name"
    t.bigint "manufacturer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["manufacturer_id"], name: "index_makes_on_manufacturer_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "manufacturer_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "metal_items", force: :cascade do |t|
    t.string "metal_item_desc"
    t.decimal "net_weight"
    t.decimal "unit_price"
    t.bigint "metal_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["metal_type_id"], name: "index_metal_items_on_metal_type_id"
  end

  create_table "metal_types", force: :cascade do |t|
    t.string "metal_type"
    t.string "metal_type_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "state_provinces", force: :cascade do |t|
    t.string "state_province_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicle_statuses", force: :cascade do |t|
    t.string "vehicle_status"
    t.string "vehicle_status_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "customer_vehicles", "customers"
  add_foreign_key "customer_vehicles", "makes"
  add_foreign_key "customer_vehicles", "state_provinces"
  add_foreign_key "customer_vehicles", "vehicle_statuses"
  add_foreign_key "customers", "countries"
  add_foreign_key "customers", "customer_statuses"
  add_foreign_key "customers", "customer_types"
  add_foreign_key "customers", "state_provinces"
  add_foreign_key "employees", "countries"
  add_foreign_key "employees", "employee_statuses"
  add_foreign_key "employees", "employee_types"
  add_foreign_key "employees", "state_provinces"
  add_foreign_key "invoices", "customers"
  add_foreign_key "invoices", "employees"
  add_foreign_key "invoices", "invoice_statuses"
  add_foreign_key "invoices", "invoice_types"
  add_foreign_key "line_items", "invoices"
  add_foreign_key "line_items", "metal_items"
  add_foreign_key "makes", "manufacturers"
  add_foreign_key "metal_items", "metal_types"
end
