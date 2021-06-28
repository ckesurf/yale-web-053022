puts "Deleting users"
User.destroy_all




puts "Creating users"



User.create(name: "Raffy", email: "rafffy@raffles.com", age: 11, coffee_lover: true, vegan: true, gender: "male", food_restrictions: "birds")
 50.times do
    User.create(name: Faker::Name.name, email: Faker::Internet.email, age: rand(1..100), coffee_lover: true, vegan: true, gender: Faker::Gender.type, food_restrictions: Faker::Food.ingredient)
 end

 puts "Seeded users!"