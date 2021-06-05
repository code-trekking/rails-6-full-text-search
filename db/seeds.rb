# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10000.times do
  traveller = Traveller.create(first_name: FFaker::Name.name, last_name: FFaker::Name.name, about: FFaker::Book.description)
  3.times do 
    traveller.locations.create(city: FFaker::Address.city, state: FFaker::Address.street_name, country: FFaker::Address.country)
  end
  puts '.'
end