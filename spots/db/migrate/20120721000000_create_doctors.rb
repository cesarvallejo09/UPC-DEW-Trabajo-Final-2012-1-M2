class CreateDoctors < ActiveRecord::Migration
  def self.up
    create_table :doctors do |t|      
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :telefono
      t.string :administrador
      t.string :user

      t.timestamps
    end
  end
  
  def self.down
    drop_table :doctors
  end  
end
