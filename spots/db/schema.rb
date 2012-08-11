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

ActiveRecord::Schema.define(:version => 20120811070330) do

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
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
    t.string   "telefono"
    t.string   "celular"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
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

  create_table "invoice_products", :force => true do |t|
    t.decimal  "precio"
    t.decimal  "cantidad"
    t.integer  "invoice_id"
    t.integer  "product_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "invoice_products", ["invoice_id"], :name => "index_invoice_products_on_invoice_id"
  add_index "invoice_products", ["product_id"], :name => "index_invoice_products_on_product_id"

  create_table "invoices", :force => true do |t|
    t.date     "fecha"
    t.decimal  "subtotal"
    t.decimal  "igv"
    t.decimal  "total"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
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
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
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
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
    t.string   "telefono"
    t.string   "celular"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
