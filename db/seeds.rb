# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Carrier.destroy_all
Phone.destroy_all

mohamed = User.new(email: "mohdawad2010@hotmail.com", password: "123456")
mohamed = User.new(email: "bob@bob.com", password: "123456")
mohamed.save
