class Product < ActiveRecord::Base
	has_many :invoice_products
	has_many :invoices, :through => :invoice_products
end
