class Doctor < ActiveRecord::Base  
  has_many :note_patients
  has_many :patients, :through => :note_patients    
end
