class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.references :patient
      t.references :client
      t.string :tipo_actividad
      t.date :fecha
      t.string :descripcion

      t.timestamps
    end
    add_index :activities, :patient_id
    add_index :activities, :client_id
  end
  
  def self.down
    drop_table :activities
  end  
end