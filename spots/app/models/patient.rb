class Patient < ActiveRecord::Base
	belongs_to :client
	belongs_to :species
	belongs_to :race
	belongs_to :blood_type
		
  has_many :notepatients
  has_many :doctors, :through => :notepatients	
end
