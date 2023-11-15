# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_11_01_113942) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "email"
    t.string "subdomain"
    t.string "password"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aws_availability_zones", force: :cascade do |t|
    t.string "name"
    t.integer "aws_region_id"
    t.boolean "is_available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aws_data_centers", force: :cascade do |t|
    t.integer "aws_vpc_id"
    t.integer "aws_region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aws_opted_availability_zones", force: :cascade do |t|
    t.integer "aws_vpc_id"
    t.integer "aws_availability_zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aws_regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aws_subnets", force: :cascade do |t|
    t.string "name"
    t.integer "aws_opted_availability_zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aws_vpcs", force: :cascade do |t|
    t.string "name"
    t.text "ipv4_cidr_block"
    t.string "tenancy"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boxes", force: :cascade do |t|
    t.string "name"
    t.string "os_image"
    t.string "family_type"
    t.string "disk"
    t.integer "account_id"
    t.integer "aws_vpc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cloud_providers", force: :cascade do |t|
    t.string "name"
    t.text "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
