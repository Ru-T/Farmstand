20.times do
  Position.create!(
    name: Faker::Lorem.sentence,
    permanent: [true, false].sample
  )
end

30.times do
  Product.create!(
    name: Faker::Commerce.color,
    description: Faker::Lorem.paragraph
  )
end

20.times do |id|
  Farm.create!(
    name: Faker::Company.name,
    location: Faker::Address.city + ", " + Faker::Address.state,
    website: Faker::Internet.url,
    description: Faker::Lorem.paragraph,
    position_id: id + 1
  )
end

Farm.all.each do |farm|
  farm.products << Product.find(rand(1...20))
end

30.times do
  User.create!(
    name: Faker::Name.name,
    bio: Faker::Lorem.sentence,
    farm_id: rand(1...20)
  )
end

Admin.create!(
  email: "rwajnberg@gmail.com",
  password: "password"
)
