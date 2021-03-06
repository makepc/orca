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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130228182130) do

  create_table "orca", :force => true do |t|
  end

  add_index "orca", ["id"], :name => "id", :unique => true

  create_table "orcamentos", :force => true do |t|
    t.string   "local",                                       :null => false
    t.text     "descricao"
    t.decimal  "distancia",    :precision => 10, :scale => 0, :null => false
    t.string   "cli_nome",                                    :null => false
    t.text     "cli_morada"
    t.decimal  "cli_contacto", :precision => 10, :scale => 0, :null => false
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.integer  "user_id"
    t.integer  "estado"
    t.string   "cli_mail"
  end

  add_index "orcamentos", ["user_id"], :name => "index_orcamentos_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "funcao"
    t.integer  "telefone"
    t.integer  "telemovel"
    t.integer  "fax"
    t.integer  "nivel"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
