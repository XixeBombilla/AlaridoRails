# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100310220943) do

  create_table "empresas", :force => true do |t|
    t.string   "nombreEmpresa"
    t.string   "logotipo"
    t.string   "mensaje"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estudiantes", :force => true do |t|
    t.string   "nombreUniversidad"
    t.string   "nombreEstudiante1"
    t.string   "nombreEstudiante2"
    t.string   "nombreEsudiante3"
    t.string   "matriculaEstudiante1"
    t.string   "matriculaEstudiante2"
    t.string   "matriculaEstudiante3"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email1"
    t.string   "email2"
    t.string   "email3"
  end

  create_table "generals", :force => true do |t|
    t.string   "nombreEmpresa"
    t.string   "nombreIntegrante1"
    t.string   "nombreIntegrante2"
    t.string   "nombreIntegrante3"
    t.string   "logotipo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "logs", :force => true do |t|
    t.string   "nombreEmpresa"
    t.integer  "logotipo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publicos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
