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
end
