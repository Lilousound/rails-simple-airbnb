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
  number_of_guests: 3
)
puts "Created London"

Flat.create!(
  name: 'Small Flat Paris',
  address: '21 rue des Fleurs 75002 Paris',
  description: 'Nive little flat in Paris',
  price_per_night: 65,
  number_of_guests: 2
)
puts "Created Paris"

Flat.create!(
  name: 'Spacious Garden Flat Berlin',
  address: '10 - Gardens Berlin',
  description: 'Spacious and cosy flat',
  price_per_night: 85,
  number_of_guests: 3
)
puts "Created Berlin"

Flat.create!(
  name: 'Large Flat Manchester',
  address: '56 Roses Manchester',
  description: 'Discover the city around',
  price_per_night: 95,
  number_of_guests: 6
)
puts "Created Manchester"

Flat.create!(
  name: 'Wonderful Flat in Barcelona',
  address: '34 La Barceloneta, Barcelona',
  description: 'Near the beach and nice restaurants',
  price_per_night: 55,
  number_of_guests: 4
)
puts "Created Barcelona"
puts "Finished! Created #{Flat.count} flats."
