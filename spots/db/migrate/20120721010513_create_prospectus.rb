class CreateProspectus < ActiveRecord::Migration
  def self.up
    create_table :prospectus do |t|
      t.string :nombre
      t.string :apellido
      t.string :nro_ruc
      t.string :correo
      t.string :direccion
      t.string :imagen
      t.string :telefono
      t.string :celular

      t.timestamps
    end
  end
  
  def self.down
    drop_table :prospectus
  end  
end