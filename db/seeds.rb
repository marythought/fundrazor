# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create(
  [
    { email: 'a@example.text', password: 'topsecret', password_confirmation: 'topsecret' },
    { email: 'b@example.text', password: 'topsecret', password_confirmation: 'topsecret' },
    { email: 'c@example.text', password: 'topsecret', password_confirmation: 'topsecret' },
    { email: 'd@example.text', password: 'topsecret', password_confirmation: 'topsecret' },
    { email: 'e@example.text', password: 'topsecret', password_confirmation: 'topsecret' },
    { email: 'f@example.text', password: 'topsecret', password_confirmation: 'topsecret' }
  ]
)

campaigns = Campaign.create(
  [
    {
      name: 'Save the Whales',
      goal: 1000,
      start_date: '2017-01-30 21:40:23',
      end_date: '2017-06-30 21:40:23',
      video_link: 'https://youtu.be/-oYIK6Bg6co'
    },
    {
      name: 'Save the Bees',
      goal: 5000,
      start_date: '2017-01-30 21:40:23',
      end_date: '2017-06-30 21:40:23',
      video_link: 'https://youtu.be/-oYIK6Bg6co'
    }
  ]
)

solicitations = Solicitation.create(
  [
    {
      goal: 100,
      main_image: 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Humpback_stellwagen_edit.jpg',
      campaign: campaigns.first,
      user: users[0]
    },
    {
      goal: 2000,
      main_image: 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Humpback_stellwagen_edit.jpg',
      campaign: campaigns.last,
      user: users[1]
    }
  ]
)

donations = Donation.create(
  [
    {
      solicitation: solicitations.first,
      amount: 10.50,
      user: users[2]
    },
    {
      solicitation: solicitations.last,
      amount: 20,
      user: users[3]
    }
  ]
)

social_shares = SocialShare.create(
  [
    {
      solicitation: solicitations.first,
      network: 'twitter'
    },
    {
      solicitation: solicitations.first,
      network: 'facebook'
    },
    {
      solicitation: solicitations.last,
      network: 'twitter'
    }
  ]
)
