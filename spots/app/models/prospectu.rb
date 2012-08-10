class Prospectu < ActiveRecord::Base

    attr_accessible :nombre
    attr_accessible :apellido
    attr_accessible :nro_ruc
    attr_accessible :correo
    attr_accessible :direccion
    attr_accessible :telefono
    attr_accessible :celular
      
    attr_accessible :imagen
    has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                      :url => "/assets/prospectus/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/prospectus/:id/:style/:basename.:extension"
                  
    validates_attachment_presence :imagen
    validates_attachment_size :imagen, :less_than => 5.megabytes
    validates_attachment_content_type :imagen, :content_type => ['image/jpeg', 'image/png']
end
