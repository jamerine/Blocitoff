50.times do
  User.create!(
    username:  Faker::Internet.user_name,
    email:   Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
end
users = User.all

# Create Items
100.times do
  Item.create!(
    name: Faker::Lorem.sentence,
    user_id: users.sample
  )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
