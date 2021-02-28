# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
song = Song.new(title: "Self Control", artist: "Frank Ocean",album: "Blonde", year: 2016)
song.save

song = Song.new(title: "Try a Little Tenderness", artist: "Otis Redding",album: "Complete & Unbelievable", year: 1966)
song.save