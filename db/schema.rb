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

ActiveRecord::Schema.define(version: 2021_03_20_123033) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "ages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "drinks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "genres", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "ancestry"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "information", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "store_name", null: false
    t.string "postal_code", null: false
    t.string "city", null: false
    t.string "address", null: false
    t.string "building"
    t.string "tel", null: false
    t.integer "genre_id", null: false
    t.integer "light_id", null: false
    t.integer "volume_id", null: false
    t.integer "budget_id", null: false
    t.integer "tobacco_id", null: false
    t.bigint "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.integer "place_id"
    t.string "transportation"
    t.string "holiday"
    t.integer "booking_id"
    t.integer "parking_id"
    t.integer "prefecture_id"
    t.integer "open"
    t.integer "close"
    t.datetime "opening_time"
    t.datetime "closing_time"
    t.index ["store_id"], name: "index_information_on_store_id"
  end

  create_table "information_ages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "information_id"
    t.bigint "age_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["age_id"], name: "index_information_ages_on_age_id"
    t.index ["information_id"], name: "index_information_ages_on_information_id"
  end

  create_table "information_drinks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "information_id"
    t.bigint "drink_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drink_id"], name: "index_information_drinks_on_drink_id"
    t.index ["information_id"], name: "index_information_drinks_on_information_id"
  end

  create_table "information_locations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "information_id"
    t.bigint "location_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["information_id"], name: "index_information_locations_on_information_id"
    t.index ["location_id"], name: "index_information_locations_on_location_id"
  end

  create_table "information_musics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "information_id"
    t.bigint "music_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["information_id"], name: "index_information_musics_on_information_id"
    t.index ["music_id"], name: "index_information_musics_on_music_id"
  end

  create_table "information_payments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "information_id"
    t.bigint "payment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["information_id"], name: "index_information_payments_on_information_id"
    t.index ["payment_id"], name: "index_information_payments_on_payment_id"
  end

  create_table "information_rooms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "information_id"
    t.bigint "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["information_id"], name: "index_information_rooms_on_information_id"
    t.index ["room_id"], name: "index_information_rooms_on_room_id"
  end

  create_table "information_services", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "information_id"
    t.bigint "service_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["information_id"], name: "index_information_services_on_information_id"
    t.index ["service_id"], name: "index_information_services_on_service_id"
  end

  create_table "information_spaces", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "information_id"
    t.bigint "space_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["information_id"], name: "index_information_spaces_on_information_id"
    t.index ["space_id"], name: "index_information_spaces_on_space_id"
  end

  create_table "locations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "musics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "payments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "places", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "ancestry"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "receipts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "price", null: false
    t.string "name", null: false
    t.string "proviso", null: false
    t.boolean "consent"
    t.bigint "reservation_id"
    t.bigint "user_id"
    t.bigint "information_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["information_id"], name: "index_receipts_on_information_id"
    t.index ["reservation_id"], name: "index_receipts_on_reservation_id"
    t.index ["user_id"], name: "index_receipts_on_user_id"
  end

  create_table "reservations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "information_id"
    t.bigint "user_id"
    t.string "name"
    t.integer "number_of_people"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "start_time"
    t.string "tel"
    t.index ["information_id"], name: "index_reservations_on_information_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "rooms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "services", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "spaces", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "stores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "store_name", null: false
    t.string "postal_code", null: false
    t.integer "prefecture_id", null: false
    t.string "city", null: false
    t.string "address", null: false
    t.string "building"
    t.string "tel", null: false
    t.string "director", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_stores_on_email", unique: true
    t.index ["reset_password_token"], name: "index_stores_on_reset_password_token", unique: true
  end

  create_table "tweets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "text"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tweets_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.date "birthday", null: false
    t.string "tel", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "information", "stores"
  add_foreign_key "information_ages", "ages"
  add_foreign_key "information_ages", "information"
  add_foreign_key "information_drinks", "drinks"
  add_foreign_key "information_drinks", "information"
  add_foreign_key "information_locations", "information"
  add_foreign_key "information_locations", "locations"
  add_foreign_key "information_musics", "information"
  add_foreign_key "information_musics", "musics"
  add_foreign_key "information_payments", "information"
  add_foreign_key "information_payments", "payments"
  add_foreign_key "information_rooms", "information"
  add_foreign_key "information_rooms", "rooms"
  add_foreign_key "information_services", "information"
  add_foreign_key "information_services", "services"
  add_foreign_key "information_spaces", "information"
  add_foreign_key "information_spaces", "spaces"
  add_foreign_key "receipts", "information"
  add_foreign_key "receipts", "reservations"
  add_foreign_key "receipts", "users"
  add_foreign_key "reservations", "information"
  add_foreign_key "reservations", "users"
  add_foreign_key "tweets", "users"
end
