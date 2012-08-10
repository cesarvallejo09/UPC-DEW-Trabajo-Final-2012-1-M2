class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :nombre
      t.string :apellido
      t.string :nro_ruc
      t.string :correo
      t.string :direccion
      t.has_attached_file :imagen
      t.string :telefono
      t.string :celular

      t.timestamps                   
    end
  end
  
  def self.down
    drop_table :clients
  end
end
