class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :nombre
      t.string :descripcion
      t.decimal :precio

      t.timestamps
    end
  end
  
  def self.down
    drop_table :products
  end  
end