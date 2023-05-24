require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating 10 fake restaurants...'

10.times do
  restaurant = Restaurant.new(
    name:    Faker::Restaurant.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: "french",
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
  restaurant.save!
end

puts 'Finished!'
