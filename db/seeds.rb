# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@prince = Artist.create!(name: "Prince")

@purple = @prince.songs.create!(title: "purple rain", length: 345, play_count:65736573)
@raspberry = @prince.songs.create!(title: "raspberry", length: 34335, play_count:657373)
