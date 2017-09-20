# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Carrier.destroy_all
Phone.destroy_all

admin = User.new(email: "mohdawad2010@hotmail.com", password: "123456")
allen = User.new(email: "allen@allen.com", password: "123456")
admin.save
allen.save

admin.carriers.create(name: "AT&T", logo_url: "https://wallpaperscraft.com/image/att_logo_brand_mark_mobile_phones_communication_26159_1920x1080.jpg")

admin.carriers.create(name: "T-Mobile", logo_url: "https://i.ytimg.com/vi/bhzgUREEf8E/maxresdefault.jpg")

admin.carriers.create(name: "Verizon", logo_url: "https://wallpaperscraft.com/image/verizon_telecommunications_company_logo_brand_26196_1920x1080.jpg")

admin.carriers.create(name: "Sprint", logo_url: "http://pennmaririshfestival.com/wp-content/uploads/2013/10/Sprint_White_Fin_Yellow.png")

admin.carriers.create(name: "Simple Mobile", logo_url: "https://i.ytimg.com/vi/YMmoNOCE5S4/maxresdefault.jpg")

admin.carriers.create(name: "MetroPCS", logo_url: "https://s-media-cache-ak0.pinimg.com/originals/ae/10/49/ae10495e459e7061b9987714f0f1e452.jpg")





admin.carriers.find(1).phones.create(name: "Galaxy S7 edge", brand: "Samsung", model: "S7 edge", photo_url: "https://edge.alluremedia.com.au/m/l/2016/05/20160220_183525.jpg")
admin.carriers.find(2).phones.create(name: "Galaxy S7 edge", brand: "Samsung", model: "S7 edge", photo_url: "https://edge.alluremedia.com.au/m/l/2016/05/20160220_183525.jpg")
admin.carriers.find(3).phones.create(name: "Galaxy S7 edge", brand: "Samsung", model: "S7 edge", photo_url: "https://edge.alluremedia.com.au/m/l/2016/05/20160220_183525.jpg")
admin.carriers.find(4).phones.create(name: "Galaxy S7 edge", brand: "Samsung", model: "S7 edge", photo_url: "https://edge.alluremedia.com.au/m/l/2016/05/20160220_183525.jpg")
admin.carriers.find(5).phones.create(name: "Galaxy S7 edge", brand: "Samsung", model: "S7 edge", photo_url: "https://edge.alluremedia.com.au/m/l/2016/05/20160220_183525.jpg")
admin.carriers.find(6).phones.create(name: "Galaxy S7 edge", brand: "Samsung", model: "S7 edge", photo_url: "https://edge.alluremedia.com.au/m/l/2016/05/20160220_183525.jpg")
