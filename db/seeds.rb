# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Place.destroy_all
Category.destroy_all
Dayoff.destroy_all
Localization.destroy_all

Category.create(description:"Sala de juntas")
Category.create(description:"Áreas recreativas")
Role.create(role:"0", description:"masterAdmin")
Role.create(role:"1", description:"admin")
Role.create(role:"2", description:"developer")
Role.create(role:"3", description:"laura@itesm.mx")
Role.create(role:"4", description:"employee")
User.create(email:"admin@admin.com", password:"12345678")
User.create(email:"employee1@employee.com", password:"12345678")
User.create(email:"employee2@employee.com", password:"12345678")
Dayoff.create(day:["01-05-2015","16-09-2015","16-11-2015","25-12-2015"])
Dayoff.create(day:["21-12-2015", "22-12-2015", "23-12-2015", "24-12-2015", "25-12-2015", "26-12-2015", "27-12-2015", "28-12-2015", "29-12-2015", "30-12-2015", "31-12-2015", "01-01-2016"])
Localization.create(state:"Nuevo León", division:"STEC", campus:"Campus Norte", building:"Edificio D", floor:1)
#Localization.create(state:"Nuevo León", division:"STEC", campus: "Campus Norte", building:"Edificio D", floor:2)
Place.create(name:"Sala D-133", description:"", capacity:10, cost:0, goods:"Proyector, Pantalla, Pizarron", latitude:0.0, longitude:0.0, status:0, category:Category.first, role:Role.last, dayoff:Dayoff.first, localization:Localization.first)
Place.create(name:"Sala D-122", description:"", capacity:10, cost:0, goods:"Proyector, Pantalla, Pizarron", latitude:0.0, longitude:0.0, status:0, category:Category.first, role:Role.last, dayoff:Dayoff.first, localization:Localization.first)
Place.create(name:"Sala D-111", description:"", capacity:10, cost:0, goods:"Proyector, Pantalla, Pizarron", latitude:0.0, longitude:0.0, status:0, category:Category.first, role:Role.last, dayoff:Dayoff.first, localization:Localization.first)
Place.create(name:"Sala D-173", description:"", capacity:10, cost:0, goods:"Proyector, Pantalla, Pizarron", latitude:0.0, longitude:0.0, status:0, category:Category.first, role:Role.last, dayoff:Dayoff.first, localization:Localization.first)
Place.create(name:"Sala VITI", description:"", capacity:10, cost:0, goods:"Proyector, Pantalla, Pizarron", latitude:0.0, longitude:0.0, status:0, category:Category.first, role:Role.last, dayoff:Dayoff.first, localization:Localization.first)
# (1..100).each do |cont|
# 	Reservation.create(
# 		startdate:Time.now,
# 		enddate:Time.now,
# 		guest:"y.dorantes@itesm.mx, rafagarciafdz@itesm.mx",
# 		status:0, userapproved:"laura@itesm.mx",
# 		user:User.first,
# 		reservable:Place.first
# 		)
# end
# (1..50).each do |cont|
# 	Reservation.create(
# 		startdate:Time.now,
# 		enddate:Time.now,
# 		guest:"y.dorantes@itesm.mx, rafagarciafdz@itesm.mx",
# 		status:0, userapproved:"laura@itesm.mx",
# 		user:User.last,
# 		reservable:Place.second
# 		)
# end
# (1..25).each do |cont|
# 	Reservation.create(
# 		startdate:Time.now,
# 		enddate:Time.now,
# 		guest:"y.dorantes@itesm.mx, rafagarciafdz@itesm.mx",
# 		status:0, userapproved:"laura@itesm.mx",
# 		user:User.second,
# 		reservable:Place.last
# 		)
# end
Reservation.create(startdate:"2015-08-31 10:00:00", enddate:"2015-08-30 13:00:00", guest:"y.dorantes@itesm.mx, rafagarciafdz@itesm.mx", status:0, userapproved:"", user:User.first, reservable:Place.second)
Reservation.create(startdate:"2015-08-31 08:00:00", enddate:"2015-08-31 10:00:00", guest:"y.dorantes@itesm.mx, rafagarciafdz@itesm.mx", status:0, userapproved:"", user:User.first, reservable:Place.third)
Reservation.create(startdate:"2015-08-31 09:00:00", enddate:"2015-08-31 11:00:00", guest:"y.dorantes@itesm.mx, rafagarciafdz@itesm.mx", status:0, userapproved:"", user:User.first, reservable:Place.first)
Reservation.create(startdate:"2015-08-31 08:00:00", enddate:"2015-08-31 09:00:00", guest:"y.dorantes@itesm.mx, rafagarciafdz@itesm.mx", status:0, userapproved:"", user:User.first, reservable:Place.first)
Reservation.create(startdate:"2015-08-31 15:00:00", enddate:"2015-08-31 17:00:00", guest:"y.dorantes@itesm.mx, rafagarciafdz@itesm.mx", status:0, userapproved:"", user:User.first, reservable:Place.first)
Reservation.create(startdate:"2015-08-31 15:00:00", enddate:"2015-08-31 17:00:00", guest:"y.dorantes@itesm.mx, rafagarciafdz@itesm.mx", status:0, userapproved:"", user:User.first, reservable:Place.third)
Reservation.create(startdate:"2015-08-31 08:00:00", enddate:"2015-08-31 18:00:00", guest:"y.dorantes@itesm.mx, rafagarciafdz@itesm.mx", status:0, userapproved:"", user:User.first, reservable:Place.last)
#Reservation.create(startdate:Time.now, enddate:Time.now, guest:"y.dorantes@itesm.mx, rafagarciafdz@itesm.mx", status:0, userapproved:"laura@itesm.mx", user:User.second, reservable:Place.second)
#Reservation.create(startdate:Time.now, enddate:Time.now, guest:"y.dorantes@itesm.mx, rafagarciafdz@itesm.mx", status:0, userapproved:"laura@itesm.mx", user:User.third, reservable:Place.third)AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
