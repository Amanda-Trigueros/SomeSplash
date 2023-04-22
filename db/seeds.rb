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

wallpaper = Category.create(name: "Wallpapers", description: "From epic drone shots to inspiring moments in nature, find free HD wallpapers worthy of your screens.")
nature= Category.create(name: "Nature", description: "Let's celebrate the magic of Mother Earth — with images of everything our planet has to offer.")
people= Category.create(name: "People", description: "Real people, captured. Photography has the power to reflect the world around us, give voice to individuals and groups.")


beachsunset = Photo.create(title: "Beach Sunset", category: wallpaper)
baynight = Photo.create(title: "Bay at Night", category: wallpaper)
desert = Photo.create(title: "Desert at Noon", category: wallpaper)

purplelake = Photo.create(title: "Purple Lake", category: nature)
greenplant = Photo.create(title: "Green Plant", category: nature)
lonelybird = Photo.create(title: "Lonely Bird", category: nature)
littlebird = Photo.create(title: "Little Bird", category: nature)

family = Photo.create(title: "Family", category: people)
coffee = Photo.create(title: "Coffee", category: people)
flowers = Photo.create(title: "Flowers", category: people)

comment = Comment.create(body: "This is an example of a comment for this category." , commentable: nature)
comment = Comment.create(body: "This is an example of a comment for this photo." , commentable: family)

puts "Seeding Done"