# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Carrier.destroy_all
Phone.destroy_all
Profile.destroy_all

admin = User.create!(email: "mohdawad2010@hotmail.com", password: "123456")
allen = User.create!(email: "allen@allen.com", password: "123456")

admin.carriers.create(name: "AT&T", logo_url: "https://wallpaperscraft.com/image/att_logo_brand_mark_mobile_phones_communication_26159_1920x1080.jpg")

admin.carriers.create(name: "T-Mobile", logo_url: "https://i.ytimg.com/vi/bhzgUREEf8E/maxresdefault.jpg")

admin.carriers.create(name: "Verizon", logo_url: "https://wallpaperscraft.com/image/verizon_telecommunications_company_logo_brand_26196_1920x1080.jpg")

admin.carriers.create(name: "Sprint", logo_url: "http://pennmaririshfestival.com/wp-content/uploads/2013/10/Sprint_White_Fin_Yellow.png")

admin.carriers.create(name: "Simple Mobile", logo_url: "https://i.ytimg.com/vi/YMmoNOCE5S4/maxresdefault.jpg")

admin.carriers.create(name: "MetroPCS", logo_url: "https://s-media-cache-ak0.pinimg.com/originals/ae/10/49/ae10495e459e7061b9987714f0f1e452.jpg")

admin.carriers.each do |carrier|
  carrier.phones.create(name: "Apple iPhone 6", brand: "Apple", model: "6", photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf2jkKF4UlQNUJHERSbhh64Ikjnx0uMVHtQAbSRagtS14MwC_xCw")
  carrier.phones.create(name: "Apple iPhone 6 plus", brand: "Apple", model: "6 plus", photo_url: "https://www.technobuffalo.com/wp-content/uploads/2014/09/iPhone-6-vs-iPhone-6-Plus-spec-shootout.jpg")
  carrier.phones.create(name: "Apple iPhone 6s", brand: "Apple", model: "6s", photo_url: "http://freshwallpapers.net/download/6014/2560x1600/download/iphone-6-2.jpg")
  carrier.phones.create(name: "Apple iPhone 6s plus", brand: "Apple", model: "6s plus", photo_url: "https://www.technobuffalo.com/wp-content/uploads/2016/09/iPhone-7-Plus-vs-iPhone-6s-plus-spec-shootout.jpg")
  carrier.phones.create(name: "Apple iPhone 7", brand: "Apple", model: "7", photo_url: "http://i1-news.softpedia-static.com/images/news2/iphone-7-review-508980-8.jpg")
  carrier.phones.create(name: "Apple iPhone 7 plus", brand: "Apple", model: "7 plus", photo_url: "https://www.wired.com/wp-content/uploads/2016/09/wired_the-iphone-7-and-7-plus-4.jpg")
  carrier.phones.create(name: "Apple iPhone 7s", brand: "Apple", model: "7", photo_url: "https://wallpaperscraft.com/image/iphone_7_apple_concept_smartphone_110314_1920x1080.jpg")
  carrier.phones.create(name: "Apple iPhone 7s plus", brand: "Apple", model: "7s plus", photo_url: "http://md2.pricebaba.co/images/product/mobile/4696/apple-iphone-7-plus-xl-52122.jpg")
  carrier.phones.create(name: "Apple iPhone 8", brand: "Apple", model: "8", photo_url: "http://i1-news.softpedia-static.com/images/news2/iphone-8-will-become-the-best-selling-iphone-in-history-top-apple-analyst-says-510589-2.jpg")
  carrier.phones.create(name: "Apple iPhone 8 plus", brand: "Apple", model: "8 plus", photo_url: "https://www.technobuffalo.com/wp-content/uploads/2016/12/iphone-8-concept-011.jpg")
  carrier.phones.create(name: "Apple iPhone X", brand: "Apple", model: "X", photo_url: "http://freshwallpapers.net/download/21474/1920x1080/download/apple-iphone-x.jpg")
  carrier.phones.create(name: "Samsung Galaxy S7", brand: "Samsung", model: "S7", photo_url: "http://cdn.wccftech.com/wp-content/uploads/2017/03/Galaxy-S7.jpg")
  carrier.phones.create(name: "Samsung Galaxy S7 edge", brand: "Samsung", model: "S7 edge", photo_url: "http://img.talkandroid.com/uploads/2016/02/Samsung_Galaxy_S7_S7Edge_silver_South_Korea_absent_front_logo_022616.jpg")
  carrier.phones.create(name: "Samsung Galaxy Note 7", brand: "Samsung", model: "Note 7", photo_url: "http://socialbarrel.com/wp-content/uploads/2016/08/samsunggalaxynote7.jpg")
  carrier.phones.create(name: "Samsung Galaxy S8", brand: "Samsung", model: "S8", photo_url: "http://edge.alluremedia.com.au/m/g/2017/03/galaxy_s8_2.jpg")
  carrier.phones.create(name: "Samsung Galaxy S8 plus", brand: "Samsung", model: "S8 plus", photo_url: "https://s3.envato.com/files/223549064/Preview%20Image%20Set/Samsung%20Galaxy%20S8%20Orchid%20Gray%20F.jpg")
  carrier.phones.create(name: "Samsung Galaxy Note 8", brand: "Samsung", model: "Note 8", photo_url: "http://cdn.wccftech.com/wp-content/uploads/2017/04/Galaxy-Note-8-4.jpg")

end
