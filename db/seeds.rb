# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all


5.times do

city= City.create!(name: Faker::Simpsons.location)

end

10.times do

  dog = Dog.create!(name: Faker::Pokemon.name, city_id:(rand(City.first.id..City.last.id)))

end

10.times do

  dogsitter = Dogsitter.create!(name: Faker::Simpsons.character, city_id:(rand(City.first.id..City.last.id)))

end

10.times do

  stroll = Stroll.create!(dog_id: (rand(Dog.first.id..Dog.last.id)), dogsitter_id:(rand(Dogsitter.first.id..Dogsitter.last.id)))

end
