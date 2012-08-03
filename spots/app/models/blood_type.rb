class BloodType < ActiveRecord::Base
  has_many :patients
end