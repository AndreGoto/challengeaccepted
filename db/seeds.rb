# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  u = User.create(email: "teste#{i}@teste.com",
                  name: Faker::Name.name,
                  password: '123123',
                  password_confirmation: '123123')

  5.times do
    Challenge.create(title: Faker::Name.title,
               description: Faker::Lorem.paragraph,
                     rules: Faker::Lorem.sentence,
                   picture: Faker::Avatar.image,
                     owner: u)
  end
end

10.times do |i|
  m = Member.create(user_id: User.find(i+1),
              challenge_id: Challenge.find(i+1))

  3.times do
    ChallengeMessage.create(message: Faker::Lorem.paragraph,
                             member: m)
  end
end
