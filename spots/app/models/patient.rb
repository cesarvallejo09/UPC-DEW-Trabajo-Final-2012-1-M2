class Patient < ActiveRecord::Base
	belongs_to :client
	belongs_to :species
	belongs_to :race
	belongs_to :blood_type
		
  has_many :notepatients
  has_many :doctors, :through => :notepatients
  
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
    
  attr_accessible :imagen
  has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :url => "/assets/patients/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/patients/:id/:style/:basename.:extension",
                    :default_url => '/assets/photo_animal.jpg'
                        
  validates_attachment_size :imagen, :less_than => 5.megabytes
   
  
  # image/pjpeg: Validaciòn para IE8
  # Fuente: http://stackoverflow.com/questions/6488437/paperclip-photo-upload-fails-in-ie8
  validates_attachment_content_type :imagen, :content_type => ['image/jpg','image/jpeg', 'image/png', 'image/tiff', 'image/gif', 'image/pjpeg']
  
  validates :nombre, presence: true, length: {:maximum => 20}
  validates :species_id, presence: true
  validates :race_id, presence: true
  validates :genero, presence: true
  validates :blood_type_id, presence: true
  validates :esterilizado, presence: true
  validates :tamano, presence: true
  validates :actividad, presence: true
  validates :client_id, presence: true
     
  validates_uniqueness_of :nombre, :scope => [:species_id, :race_id, :genero, :blood_type_id, :esterilizado, :tamano, :actividad, :peso, :fecha_nac], :message => "El paciente que intenta registrar, ya existe."      	
end
