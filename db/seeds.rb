# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do |i|
#   u = User.create(email: "teste#{i}@teste.com",
#                   name: Faker::Name.name,
#                   password: '123123',
#                   password_confirmation: '123123')

#   5.times do
#     Challenge.create(title: Faker::Name.title,
#                description: Faker::Lorem.paragraph,
#                      rules: Faker::Lorem.sentence,
#                    picture: Faker::Avatar.image,
#                      owner: u)
#   end
# end

# 10.times do |i|
#   m = Member.create(user_id: User.find(i+1),
#               challenge_id: Challenge.find(i+1))

#   3.times do
#     ChallengeMessage.create(message: Faker::Lorem.paragraph,
#                              member: m)
#   end
# end

# u = User.create(email: "admin@challengeslab.com",
#                  name: "Admin master",
#              password: 'Challenge@lab123',
# password_confirmation: 'Challenge@lab123')

# Challenge.create(title: "7 minutes: Legs",
#            description: "3 sets of 100 squats",
#                  rules: "Do not be lazy!",
#                picture: Faker::Avatar.image,
#                  owner: u,
#             start_date: "2010/01/01",
#               end_date: "2020/01/01",
#               yourself: true)

# Challenge.create(title: "7 minutes: push ups",
#            description: "3 sets of 50 push ups",
#                  rules: "Do not be lazy!",
#                picture: Faker::Avatar.image,
#                  owner: u,
#             start_date: "2010/01/01",
#               end_date: "2020/01/01",
#               yourself: true)

# Challenge.create(title: "7 minutes: Legs",
#            description: "3 sets of 100 squats",
#                  rules: "Do not be lazy!",
#                picture: Faker::Avatar.image,
#                  owner: User.find(1),
#             start_date: "2010/01/01",
#               end_date: "2020/01/01",
#               yourself: true)

# Challenge.create(title: "7 minutes: Legs",
#            description: "3 sets of 100 squats",
#                  rules: "Do not be lazy!",
#                picture: Faker::Avatar.image,
#                  owner: User.find(1),
#             start_date: "2010/01/01",
#               end_date: "2020/01/01",
#               yourself: true)
