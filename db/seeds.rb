# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Delete All Existing Rentals
Rental.delete_all

# Create three rentals
Rental.create!(title: 'Great 3 bedroom up in Dorchester!',
               owner: 'Derek Miller',
               address1: '1000 Dorchester Avenue',
               address2: 'Apartment 3',
               city: 'Dorchester',
               state: 'MA',
               zip: '02382',
               price: 3000,
               bedrooms: 3,
               bathrooms: 2,
               lease_months: 12,
               move_in: '2016/06/01',
               move_out: '2017/05/31',
               washer_dryer: true,
               outdoor_space: true,
               fitness_center: false,
               pet_friendly: false,
               dishwasher: true,
               pool: false,
               storage_space: true,
               wifi: false,
               utilities_included: false,
               porch: true,
               bike_friendly: true,
               ceiling_fans: true,
               parking: true,
               central_air: false,
               concierge: false,
               fireplace: false)

puts "Created 1 rental"
