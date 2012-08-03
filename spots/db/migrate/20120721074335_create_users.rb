class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :nombre
      t.date :fecha_inicio_act
      t.string :correo
      t.string :clave
      t.boolean :activo
      t.string :comentario
      t.integer :rol_defecto

      t.timestamps
    end
  end
  
  def self.down
    drop_table :users
  end  
end