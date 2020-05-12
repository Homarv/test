# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Event.destroy_all


10.times do
  event = Event.create(
    start_date: Faker::Date.between(from: Date.today, to: 2.year.from_now),
    duration: Faker::Number.between(from: 1, to: 1000),
    title: Faker::Games::WorldOfWarcraft.quote,
    description: Faker::Lorem.sentence(word_count: 3),
    price: Faker::Number.between(from: 1, to: 1000),
    location: Faker::Nation.capital_city,
  )
end

10.times do
  user = User.create(
    first_name: Faker::JapaneseMedia::DragonBall.character,
    last_name: Faker::JapaneseMedia::OnePiece.island,
    description: Faker::Hipster.sentence,
    )
end


20.times do 
  attendance = Attendance.create(
    stripe_customer_id: Faker::Stripe.valid_card,
    )
end