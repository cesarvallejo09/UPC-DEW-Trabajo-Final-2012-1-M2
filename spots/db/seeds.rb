# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Prospectu.create(nombre: 'Rafael', apellido: 'Vargas', nro_ruc: '10451108846', correo: 'rafael.vargas@hotmail.com', direccion: 'calle 12 canto chico', imagen: 'imagen1.jpg', telefono: '4892626', celular: '954856255')
Prospectu.create(nombre: 'Carlos Eduardo', apellido: 'Machanay Sulca', nro_ruc: '10485926479', correo: 'carlos.machanay@hotmail.com', direccion: 'av. javier prado este # 456', imagen: 'imagen2.jpg', telefono: '4892626', celular: '986532215')
Prospectu.create(nombre: 'David', apellido: 'Chambilla Ordonez', nro_ruc: '10475869146', correo: 'david.chambilla@hotmail.com', direccion: 'av. peru # 487', imagen: 'imagen3.jpg', telefono: '3765858', celular: '975628489')
Prospectu.create(nombre: 'Fernando', apellido: 'Prado Verastegui', nro_ruc: '10485926155', correo: 'fernando.prado@hotmail.com', direccion: 'av. circunvalacion # 816', imagen: 'imagen4.jpg', telefono: '014895678', celular: '986245792')
    
Race.create(nombre: 'Bobtail', descripcion: 'Ovejero ingles')
Race.create(nombre: 'Dogo', descripcion: 'Argentino')

Species.create(nombre: 'Canino', descripcion: 'Canino')
Species.create(nombre: 'Felino', descripcion: 'Felino')

BloodType.create(nombre: 'A+', descripcion: 'A+')
BloodType.create(nombre: 'A-', descripcion: 'A-')

Doctor.create(nombre: 'Alexis Reynaldo', apellido: 'Nombera Casas', correo: 'anombera@gmail.com', telefono: '014865959', administrador: 'SI', user: 'anombera')
Doctor.create(nombre: 'Gary Sait', apellido: 'Baez Zabala', correo: 'gzabala@hotmail.com', telefono: '013870851', administrador: 'NO', user: 'gzabala')
Doctor.create(nombre: 'Jhon Hector', apellido: 'Marcelo Florian', correo: 'jmarcelo@hotmail.com', telefono: '014580023', administrador: 'SI', user: 'jmarcelo')


  