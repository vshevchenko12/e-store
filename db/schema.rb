# frozen_string_literal: true

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

ActiveRecord::Schema[7.1].define(version: 20_230_823_170_710) do
  create_table 'carts', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'line_items', force: :cascade do |t|
    t.integer 'painting_id', null: false
    t.integer 'cart_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'quantity', default: 1
    t.index ['cart_id'], name: 'index_line_items_on_cart_id'
    t.index ['painting_id'], name: 'index_line_items_on_painting_id'
  end

  create_table 'paintings', force: :cascade do |t|
    t.string 'title'
    t.text 'description'
    t.decimal 'price', precision: 5, scale: 2, default: '0.0'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'image'
    t.integer 'user_id'
    t.string 'size'
    t.string 'materials'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'name'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'line_items', 'carts'
  add_foreign_key 'line_items', 'paintings'
end