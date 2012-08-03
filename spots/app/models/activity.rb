class Activity < ActiveRecord::Base
  belongs_to :patient
  belongs_to :client
end
