# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# img_arr = ["https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg",
# 					 "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg",
# 					 "https://www.oleolife.com/wp-content/uploads/2018/01/quality-fresh-coconut-fruits-for-sale.jpg",
# 						"https://pt.wikipedia.org/wiki/Ficheiro:Red_rose.jpg",
# 						"https://www.ikea.com/us/en/images/products/fejka-artificial-potted-plant__0614197_PE686822_S4.JPG",
# 						"https://images-na.ssl-images-amazon.com/images/I/61mJ3oVegKL._SL1200_.jpg",
# 						"https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_snake-plant-slaurentii_terracotta_4_2230x.progressive.jpg?v=1537308389",
# 						"https://www.ikea.com/gb/en/images/products/dypsis-lutescens-potted-plant-areca-palm__0653973_pe708202_s4.jpg",
# 						"https://4.imimg.com/data4/WL/IT/MY-34139455/indoor-ornamental-plant-500x500.jpg",
# 						"https://www.infoescola.com/wp-content/uploads/2010/04/banana_600797891.jpg",
# 					]

Garden.destroy_all

garden_arr = %w(backyard bed field greenhouse nursery patio terrace conservatory enclosure hothouse oasis patch plot cold frame)
plant_arr = %w(flower grass herb seedling shrub tree vine weed )


require 'faker'

gardens = []
12.times do 
	garden = Garden.new(name:Faker::Games::ElderScrolls.city,
											banner_url: "https://source.unsplash.com/featured/#{garden_arr.sample}")
	garden.save
	gardens << garden
end


gardens.each do |garden|
	3.times do
		plant = Plant.new(name: Faker::TvShows::SouthPark.character, image_url: "https://source.unsplash.com/featured/#{plant_arr.sample}" )
		plant.garden = garden
		plant.save
	end
end
