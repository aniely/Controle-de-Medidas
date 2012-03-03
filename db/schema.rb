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

ActiveRecord::Schema.define(:version => 20120303121348) do

  create_table "atividadefisicas", :force => true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.string   "calorias"
    t.string   "horas"
    t.integer  "pessoa_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "atividadefisicas", ["pessoa_id"], :name => "index_atividadefisicas_on_pessoa_id"

  create_table "atividades", :force => true do |t|
    t.string   "nomeat"
    t.string   "tipo"
    t.string   "calorias"
    t.string   "horas"
    t.integer  "pessoa_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "atividades", ["pessoa_id"], :name => "index_atividades_on_pessoa_id"

  create_table "medidas", :force => true do |t|
    t.string   "peso"
    t.string   "altura"
    t.string   "medida"
    t.integer  "pessoa_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "medidas", ["pessoa_id"], :name => "index_medidas_on_pessoa_id"

  create_table "pessoas", :force => true do |t|
    t.string   "nome"
    t.string   "sexo"
    t.string   "cpd"
    t.string   "telefone"
    t.string   "datanascimento"
    t.string   "email"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
