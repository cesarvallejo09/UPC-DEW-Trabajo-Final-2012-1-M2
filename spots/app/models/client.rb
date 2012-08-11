class Client < ActiveRecord::Base
  has_many :patients
  
  attr_accessible :nombre
  attr_accessible :apellido
  attr_accessible :nro_ruc
  attr_accessible :correo
  attr_accessible :direccion
  attr_accessible :telefono
  attr_accessible :celular
    
  attr_accessible :imagen
  has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :url => "/assets/clients/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/clients/:id/:style/:basename.:extension",
                    :default_url => '/assets/photo.png'
                        
  validates_attachment_size :imagen, :less_than => 5.megabytes
  	
  # image/pjpeg: Validaciòn para IE8
  # Fuente: http://stackoverflow.com/questions/6488437/paperclip-photo-upload-fails-in-ie8
  validates_attachment_content_type :imagen, :content_type => ['image/jpg','image/jpeg', 'image/png', 'image/tiff', 'image/gif', 'image/pjpeg']
  
  validates :nombre, presence: true, length: {:maximum => 50}
  validates :apellido, presence: true, length: {:maximum => 50}
  validates :nro_ruc, presence: true, length: {:maximum => 11}
  validates :correo, presence: true, length: {:maximum => 50}
  validates :direccion, presence: true, length: {:maximum => 100}
  validates :telefono, presence: true, length: {:maximum => 20}
  validates :celular, presence: true, length: {:maximum => 20}
  
  validates_uniqueness_of :nro_ruc, :message => "El numero de RUC se encuentra asignado a otro cliente."
  validates_uniqueness_of :correo, :message => "El correo se encuentra asignado a otro cliente."
  validates_uniqueness_of :telefono, :message => "El telefono se encuentra asignado a otro cliente."
  validates_uniqueness_of :celular, :message => "El numero de celular se encuentra asignado a otro cliente."    
  validates_uniqueness_of :nombre, :scope => [:nro_ruc, :correo, :telefono, :celular], :message => "El cliente que intenta registrar, ya existe."  
end
