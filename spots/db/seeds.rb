# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Prospectu.create(nombre: 'Rafael', apellido: 'Vargas', nro_ruc: '10451108846', correo: 'rafael.vargas@hotmail.com', direccion: 'calle 12 canto chico', imagen: ':rails_root/public/assets/prospectus/1/original/1.JPG', telefono: '4892626', celular: '954856255')
# Prospectu.create(nombre: 'Carlos Eduardo', apellido: 'Machanay Sulca', nro_ruc: '10485926479', correo: 'carlos.machanay@hotmail.com', direccion: 'av. javier prado este # 456', imagen: '/assets/prospectus/1/original/1.JPG', telefono: '4892626', celular: '986532215')
# Prospectu.create(nombre: 'David', apellido: 'Chambilla Ordonez', nro_ruc: '10475869146', correo: 'david.chambilla@hotmail.com', direccion: 'av. peru # 487', imagen: '/assets/prospectus/1/original/1.JPG', telefono: '3765858', celular: '975628489')
# Prospectu.create(nombre: 'Fernando', apellido: 'Prado Verastegui', nro_ruc: '10485926155', correo: 'fernando.prado@hotmail.com', direccion: 'av. circunvalacion # 816', imagen: '/assets/prospectus/1/original/1.JPG', telefono: '014895678', celular: '986245792')
# Prospectu.create(nombre: 'Gabriel', apellido: 'Montes', nro_ruc: '10281182384', correo: 'gabriel.montes@gmail.com', direccion: 'Fray Angelico 234 Miraflores', imagen: '/assets/prospectus/1/original/1.JPG', telefono: '4452874', celular: '986864087')
# Prospectu.create(nombre: 'Cecilia', apellido: 'Perez', nro_ruc: '10265216425', correo: 'cecilia.perez@gmail.com', direccion: 'Av La Molina 487', imagen: '/assets/prospectus/1/original/1.JPG', telefono: '3485578', celular: '986532215')
# Prospectu.create(nombre: 'Patricia', apellido: 'Martinez', nro_ruc: '10385816452', correo: 'patricia.martinez@hotmail.com', direccion: 'Jr Rio Tumbes 345, Surco', imagen: '/assets/prospectus/1/original/1.JPG', telefono: '4748852', celular: '888560934')
# Prospectu.create(nombre: 'Milagros', apellido: 'Galvez', nro_ruc: '10281635921', correo: 'milagros.galvez@gmail.com', direccion: 'Los Geranios 186 San Borja', imagen: '/assets/prospectus/1/original/1.JPG', telefono: '2247785', celular: '998867456')

    
Race.create(nombre: 'Bobtail', descripcion: 'Ovejero ingles')
Race.create(nombre: 'Dogo', descripcion: 'Argentino')
Race.create(nombre: 'Cocker', descripcion: 'Spaniel')
Race.create(nombre: 'Boxer', descripcion: 'Germany')
Race.create(nombre: 'Doberman', descripcion: 'Pinscher puppies')
Race.create(nombre: 'Pastor', descripcion: 'Aleman')
Race.create(nombre: 'Shitzu', descripcion: 'Shitzu')

Species.create(nombre: 'Canino', descripcion: 'Canino')
Species.create(nombre: 'Felino', descripcion: 'Felino')

BloodType.create(nombre: 'A+', descripcion: 'A+')
BloodType.create(nombre: 'A-', descripcion: 'A-')
BloodType.create(nombre: 'B+', descripcion: 'B+')
BloodType.create(nombre: 'B-', descripcion: 'B-')
BloodType.create(nombre: 'AB+', descripcion: 'AB+')
BloodType.create(nombre: 'AB-', descripcion: 'AB-')
BloodType.create(nombre: 'O+', descripcion: 'O+')
BloodType.create(nombre: 'O-', descripcion: 'O-')

Doctor.create(nombre: 'Alexis Reynaldo', apellido: 'Nombera Casas', correo: 'anombera@gmail.com', telefono: '014865959', administrador: 'SI', user: 'anombera')
Doctor.create(nombre: 'Gary Sait', apellido: 'Baez Zabala', correo: 'gzabala@hotmail.com', telefono: '013870851', administrador: 'NO', user: 'gzabala')
Doctor.create(nombre: 'Jhon Hector', apellido: 'Marcelo Florian', correo: 'jmarcelo@hotmail.com', telefono: '014580023', administrador: 'SI', user: 'jmarcelo')


  