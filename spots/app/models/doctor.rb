class Doctor < ActiveRecord::Base  
  has_many :note_patients
  has_many :patients, :through => :note_patients   
  
  validates :nombre, presence: true, length: {:maximum => 50}
  validates :apellido, presence: true, length: {:maximum => 50}
  validates :correo, presence: true, length: {:maximum => 50}
  validates :telefono, presence: true, length: {:maximum => 20}
  validates :administrador, presence: true
  validates :user, presence: true, length: {:maximum => 10}

  #validates_uniqueness_of :user, :message => "El usuario ya fue tomado"
  #validates_uniqueness_of :correo, :message => "El correo ya fue tomado"
  #validates_uniqueness_of :telefono, :message => "El telefono ya fue tomado"

  #validates_uniqueness_of :nombre, :scope => [:apellido]


#VALIDACIONES:
#http://guides.rubyonrails.org/active_record_validations_callbacks.html
#http://api.rubyonrails.org/classes/ActiveRecord/Validations/ClassMethods.html#method-i-create-21
#http://stackoverflow.com/questions/10679061/undefined-method-first-name-for-nilnilclass-after-installing-devise

#REDIRECCIONAMIENTO DEVISE:
#https://www.google.com.pe/#hl=es-419&sclient=psy-ab&q=devise+sign+in+redirect&oq=devise+sign_in+&gs_l=hp.3.2.0j0i30l3.0.0.4.125.0.0.0.0.0.0.0.0..0.0...0.0...1c.P5LhO0DQk5k&pbx=1&bav=on.2,or.r_gc.r_pw.r_qf.&fp=d18e719b651c3343&biw=1024&bih=596
#http://rubydoc.info/github/plataformatec/devise/master/Devise/Controllers/Helpers/
#http://rubydoc.info/github/plataformatec/devise/master/Devise/Controllers/Helpers#after_sign_in_path_for-instance_method



end