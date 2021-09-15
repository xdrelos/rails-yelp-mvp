# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@resto1 = Restaurant.new(name: "Loco", address: "40000 Mont-de-Marsan", category: "italian")
@resto1.save
@resto2 = Restaurant.new(name: "L'Entracte", address: "40000 Mont-de-Marsan", category: "french")
@resto2.save
@resto3 = Restaurant.new(name: "Le Donjon", address: "40000 Mont-de-Marsan", category: "french")
@resto3.save
@resto4 = Restaurant.new(name: "Le Belgian", address: "40000 Mont-de-Marsan", category: "belgian")
@resto4.save
@resto5 = Restaurant.new(name: "Sushi Bar", address: "40000 Mont-de-Marsan", category: "japanese")
@resto5.save
