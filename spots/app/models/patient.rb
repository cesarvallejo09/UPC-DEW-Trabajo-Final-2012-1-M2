class Patient < ActiveRecord::Base
	belongs_to :client
	belongs_to :species
	belongs_to :race
	belongs_to :blood_type
		
  has_many :notepatients
  has_many :doctors, :through => :notepatients
  
  attr_accessible :imagen
  has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :url => "/assets/patients/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/patients/:id/:style/:basename.:extension",
                    :default_url => '/assets/photo_animal.jpg'
                        
  validates_attachment_size :imagen, :less_than => 5.megabytes
    
  attr_accessible :nombre
  attr_accessible :species_id
  attr_accessible :race_id
  attr_accessible :genero
  attr_accessible :blood_type_id
  attr_accessible :esterilizado
  attr_accessible :tamano
  attr_accessible :actividad
  attr_accessible :peso
  attr_accessible :fecha_nac
  attr_accessible :client_id  
  
  # image/pjpeg: Validaciòn para IE8
  # Fuente: http://stackoverflow.com/questions/6488437/paperclip-photo-upload-fails-in-ie8
  validates_attachment_content_type :imagen, :content_type => ['image/jpg','image/jpeg', 'image/png', 'image/tiff', 'image/gif', 'image/pjpeg']      	
end
