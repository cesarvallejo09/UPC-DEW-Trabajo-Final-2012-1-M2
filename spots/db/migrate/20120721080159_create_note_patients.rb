class CreateNotePatients < ActiveRecord::Migration
  def self.up
    create_table :note_patients do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.date :fecha
      t.string :comentario
      t.string :imagen_med

      t.timestamps
    end
  end
  
  def self.down
    drop_table :note_patients
  end  
end