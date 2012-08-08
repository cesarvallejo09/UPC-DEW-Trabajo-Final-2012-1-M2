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

ActiveRecord::Schema.define(:version => 20120721080638) do

  create_table "activities", :force => true do |t|
    t.integer  "patient_id"
    t.integer  "client_id"
    t.string   "tipo_actividad"
    t.date     "fecha"
    t.string   "descripcion"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "activities", ["client_id"], :name => "index_activities_on_client_id"
  add_index "activities", ["patient_id"], :name => "index_activities_on_patient_id"

  create_table "blood_types", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "nro_ruc"
    t.string   "correo"
    t.string   "direccion"
    t.string   "imagen"
    t.string   "telefono"
    t.string   "celular"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctors", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "correo"
    t.string   "telefono"
    t.string   "administrador"
    t.string   "user"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "note_clients", :force => true do |t|
    t.integer  "client_id"
    t.date     "fecha"
    t.string   "comentario"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "note_clients", ["client_id"], :name => "index_note_clients_on_client_id"

  create_table "note_patients", :force => true do |t|
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.date     "fecha"
    t.string   "comentario"
    t.string   "imagen_med"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "nombre"
    t.integer  "species_id"
    t.integer  "race_id"
    t.string   "genero"
    t.integer  "blood_type_id"
    t.string   "esterilizado"
    t.string   "tamano"
    t.string   "actividad"
    t.decimal  "peso"
    t.date     "fecha_nac"
    t.integer  "client_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "patients", ["blood_type_id"], :name => "index_patients_on_blood_type_id"
  add_index "patients", ["client_id"], :name => "index_patients_on_client_id"
  add_index "patients", ["race_id"], :name => "index_patients_on_race_id"
  add_index "patients", ["species_id"], :name => "index_patients_on_species_id"

  create_table "products", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.decimal  "precio"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "prospectus", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "nro_ruc"
    t.string   "correo"
    t.string   "direccion"
    t.string   "imagen"
    t.string   "telefono"
    t.string   "celular"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "nombre"
    t.string   "comentario"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "species", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.string   "comentario"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nombre"
    t.date     "fecha_inicio_act"
    t.string   "correo"
    t.string   "clave"
    t.boolean  "activo"
    t.string   "comentario"
    t.integer  "rol_defecto"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
