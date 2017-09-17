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
allen = User.new(email: "allen@allen.com", password: "123456")
mohamed.save
allen.save

mohamed.carriers.create(name: "AT&T", logo_url: "https://wallpaperscraft.com/image/att_logo_brand_mark_mobile_phones_communication_26159_1920x1080.jpg")

mohamed.carriers.first.phones.create(name: "Galaxy S7 edge", brand: "Samsung", model: "S7 edge", photo_url: "https://edge.alluremedia.com.au/m/l/2016/05/20160220_183525.jpg")
