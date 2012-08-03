class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string :nombre
      t.references :species
      t.references :race
      t.string :genero
      t.references :blood_type
      t.string :esterilizado
      t.string :tamano
      t.string :actividad
      t.decimal :peso
      t.date :fecha_nac
      t.references :client

      t.timestamps
    end
    add_index :patients, :client_id
    add_index :patients, :species_id
    add_index :patients, :race_id
    add_index :patients, :blood_type_id
  end
  
  def self.down
    drop_table :patients
  end  
end