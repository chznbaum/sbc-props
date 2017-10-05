# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  FreelanceProposal.create!(
    client: Faker::Name.name,
    portfolio_url: Faker::Internet.url,
    tools: "Ruby on Rails, Angular, PostgreSQL",
    estimated_hours: rand(8..100),
    hourly_rate: 90,
    weeks_to_complete: rand(8..26),
    client_email: Faker::Internet.safe_email
  )
end
