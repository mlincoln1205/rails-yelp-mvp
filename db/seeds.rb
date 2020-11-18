5.times do
  restaurant = Restaurant.create!(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )

  review = Review.create!(
  content: "teste review",
  rating: rand(0..5),
  restaurant: restaurant
  )
end
