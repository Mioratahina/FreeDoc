# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
	d = Doctor.create
	d.first_name = "walter" + i.to_s
	d.last_name = "john_#{i}"
	d.specialty = "specialty_#{i}"
	d.zip_code = "D2#{i.to_s}"
	d.save
	p = Patient.create
	p.first_name = "eddy_#{i}"
	p.last_name = "lio_#{i}"
	p.save
end
puts "10 Doctors and 10 Patients created"