# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.destroy_all
puts "Creating flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  image_url: "https://plus.unsplash.com/premium_photo-1673014201500-f13a3a4adf27?q=80&w=2695&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
puts "Created London"

Flat.create!(
  name: 'Small Flat Paris',
  address: '21 rue des Fleurs 75002 Paris',
  description: 'Nive little flat in Paris',
  price_per_night: 65,
  number_of_guests: 2,
  image_url: "https://plus.unsplash.com/premium_photo-1661880234863-bc0723394376?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE3fHxpbnNpZGUlMjBmbGF0fGVufDB8fDB8fHww"
)
puts "Created Paris"

Flat.create!(
  name: 'Spacious Garden Flat Berlin',
  address: '10 - Gardens Berlin',
  description: 'Spacious and cosy flat',
  price_per_night: 85,
  number_of_guests: 3,
  image_url: "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
puts "Created Berlin"

Flat.create!(
  name: 'Large Flat Manchester',
  address: '56 Roses Manchester',
  description: 'Discover the city around',
  price_per_night: 95,
  number_of_guests: 6,
  image_url: "https://plus.unsplash.com/premium_photo-1678752717095-08cd0bd1d7e7?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
puts "Created Manchester"

Flat.create!(
  name: 'Wonderful Flat in Barcelona',
  address: '34 La Barceloneta, Barcelona',
  description: 'Near the beach and nice restaurants',
  price_per_night: 55,
  number_of_guests: 4,
  image_url: "https://plus.unsplash.com/premium_photo-1675537857054-8c7e518553af?q=80&w=2654&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
puts "Created Barcelona"
puts "Finished! Created #{Flat.count} flats."
