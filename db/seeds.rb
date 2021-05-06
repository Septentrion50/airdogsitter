# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

20.times do
  City.create!(city_name: Faker::Address.city)
end

100.times do
  Dogsitter.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: City.all.sample
  )

  Dog.create!(
    first_name: Faker::Name.first_name,
    city: City.all.sample
  )
end

200.times do
  dogsitter = Dogsitter.all.sample
  doggy = Dog.where("city_id = ?", "#{dogsitter.city_id}").sample
  Stroll.create!(
    date: Faker::Date.in_date_period,
    dogsitter: dogsitter,
    dog: doggy,
    city: doggy.city
  )
end
