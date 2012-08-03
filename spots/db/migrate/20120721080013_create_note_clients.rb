class CreateNoteClients < ActiveRecord::Migration
  def self.up
    create_table :note_clients do |t|
      t.references :client
      t.date :fecha
      t.string :comentario

      t.timestamps
    end
    add_index :note_clients, :client_id
  end
  
  def self.down
    drop_table :note_clients
  end  
end