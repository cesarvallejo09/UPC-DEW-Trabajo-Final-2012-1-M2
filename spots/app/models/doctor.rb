class Doctor < ActiveRecord::Base  
  has_many :note_patients
  has_many :patients, :through => :note_patients   
  
  validates :nombre, presence: true, length: {:maximum => 50}
  validates :apellido, presence: true, length: {:maximum => 50}
  validates :correo, presence: true, length: {:maximum => 50}
  validates :telefono, presence: true, length: {:maximum => 20}
  validates :administrador, presence: true
  validates :user, presence: true, length: {:maximum => 10}
  
  validates_uniqueness_of :correo, :message => "El correo se encuentra asignado a otro doctor."
  validates_uniqueness_of :telefono, :message => "El telefono se encuentra asignado a otro doctor."
  validates_uniqueness_of :user, :message => "El usuario se encuentra asignado a otro doctor."    
  validates_uniqueness_of :nombre, :scope => [:correo, :user, :telefono], :message => "El doctor que intenta registrar, ya existe."

  #VALIDACIONES:
  #http://guides.rubyonrails.org/active_record_validations_callbacks.html
  #http://api.rubyonrails.org/classes/ActiveRecord/Validations/ClassMethods.html#method-i-create-21
  #http://stackoverflow.com/questions/10679061/undefined-method-first-name-for-nilnilclass-after-installing-devise
end