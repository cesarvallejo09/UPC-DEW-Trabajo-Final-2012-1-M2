class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :fecha
      t.decimal :subtotal
      t.decimal :igv
      t.decimal :total

      t.timestamps
    end
  end
end
