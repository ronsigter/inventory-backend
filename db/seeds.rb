10.times do
  Product.create({
    title: Faker::Food.unique.dish,
    description: Faker::Food.description,
    quantity: rand(1.33...20.123).round(2),
    price: rand(1.33...20.123).round(2),
  })
end

10.times do
  Store.create({
    name: Faker::Restaurant.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}"
  })
end