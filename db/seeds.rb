20.times do
  Position.create!(name: Faker::Lorem.sentence,
                   permanent: [true, false].sample
                   )
end

id = 0
20.times do |id|
  Farm.create!(
    name: Faker::Company.name,
    location: Faker::Address.city + ", " + Faker::Address.state,
    website: Faker::Internet.url,
    description: Faker::Lorem.paragraph,
    position_id: id + 1
  )
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
