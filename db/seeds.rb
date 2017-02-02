# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@users = []
100.times do |i|
  user = User.create(
    email: "user#{i}@example.text",
    password: 'topsecret',
    password_confirmation: 'topsecret'
  )
  @users << user
end

@campaigns = []
100.times do
  campaign = Campaign.create(
    name: "#{Faker::Team.name} #{Faker::Team.sport}",
    goal: rand(5000),
    start_date: Time.now,
    end_date: 3.months.from_now,
    video_link: 'https://youtu.be/-oYIK6Bg6co',
    main_image: Faker::Placeholdit.image
  )
  @campaigns << campaign
end

@solicitations = []
1000.times do |_i|
  solicitation = Solicitation.create(
    goal: rand(100),
    main_image: Faker::Placeholdit.image,
    campaign: @campaigns.sample,
    user: @users.sample
  )
  @solicitations << solicitation
end

@donations = []
10_000.times do
  donation = Donation.create(
    solicitation: @solicitations.sample,
    amount: rand(10),
    user: @users.sample,
    comment: Faker::Lorem.sentence
  )
  @donations << donation
end

# one campaign goes viral!
2000.times do
  Donation.create(
    solicitation: @solicitations.first,
    amount: rand(10),
    user: @users.sample,
    comment: Faker::Lorem.sentence
  )
end
