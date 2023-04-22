# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Start Seeding"

Category.destroy_all
Photo.destroy_all
Comment.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('categories')
ActiveRecord::Base.connection.reset_pk_sequence!('comments')
ActiveRecord::Base.connection.reset_pk_sequence!('photos')

puts "Seeding Category"
wallpaper = Category.create(name: "Wallpapers", description: "From epic drone shots to inspiring moments in nature, find free HD wallpapers worthy of your screens.")
wallpaper.cover.attach(io: File.open('app/assets/images/wallpcover.png'), filename: 'wallpcover.png')

nature = Category.create(name: "Nature", description: "Let's celebrate the magic of Mother Earth — with images of everything our planet has to offer.")
nature.cover.attach(io: File.open('app/assets/images/naturecover.png'), filename: 'naturecover.png')

people = Category.create(name: "People", description: "Real people, captured. Photography has the power to reflect the world around us, give voice to individuals and groups.")
people.cover.attach(io: File.open('app/assets/images/peoplecover.png'), filename: 'peoplecover.png')

puts "Seeding Photo"
beachsunset = Photo.create(title: "Beach Sunset", category: wallpaper)
beachsunset.image.attach(io: File.open('app/assets/images/beachsunset.png'), filename: 'beachsunset.png')

baynight = Photo.create(title: "Bay at Night", category: wallpaper)
baynight.image.attach(io: File.open('app/assets/images/baynight.png'), filename: 'baynight.png')

dessert = Photo.create(title: "Desert at Noon", category: wallpaper)
dessert.image.attach(io: File.open('app/assets/images/dessert.png'), filename: 'dessert.png')

purplelake = Photo.create(title: "Purple Lake", category: nature)
purplelake.image.attach(io: File.open('app/assets/images/purplelake.png'), filename: 'purplelake.png')

greenplant = Photo.create(title: "Green Plant", category: nature)
greenplant.image.attach(io: File.open('app/assets/images/greenplant.png'), filename: 'greenplant.png')

littlebird = Photo.create(title: "Little Bird", category: nature)
littlebird.image.attach(io: File.open('app/assets/images/bird.png'), filename: 'bird.png')

family = Photo.create(title: "Family", category: people)
family.image.attach(io: File.open('app/assets/images/family.png'), filename: 'family.png')

coffee = Photo.create(title: "Coffee", category: people)
coffee.image.attach(io: File.open('app/assets/images/coffee.png'), filename: 'coffee.png')

flowers = Photo.create(title: "Flowers", category: people)
flowers.image.attach(io: File.open('app/assets/images/flower.png'), filename: 'flower.png')

puts "Seeding Comment"
comment = Comment.create(body: "This is an example of a comment for this category." , commentable: nature)
comment = Comment.create(body: "This is an example of a comment for this photo." , commentable: family)

puts "Seeding Done"