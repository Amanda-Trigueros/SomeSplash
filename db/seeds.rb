# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.destroy_all
Photo.destroy_all
Comment.destroy_all

category= Category.create(name: "name 1")
photo = Photo.create(title: " New title", category: category)
p Photo.all
comment = Comment.create(body: " Body aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" , commentable: photo)
p Photo.all
p comment