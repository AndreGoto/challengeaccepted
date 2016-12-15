# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

#     u = User.create(email: "admin@challengeslab.com",
#                     name: "Admin master",
#                     password: 'Challenge@lab123',
#                     password_confirmation: 'Challenge@lab123')

# #
#     Challenge.create(title: "47 Day Challenge",
#                description: "You don’t always need to partake in massive life altering experiences, around the world adventures or make drastic lifestyle changes to your routine to make a significant difference to your life. Change yourself from the inside first.
#                               Here are the 47 challenges:
#                               \n
#                               1. Give a compliment a day.

#                               2. Speak to someone new every day. It doesn't matter if it's just a hi or a meaningfull conversation.

#                               3. Give up alcohol for a weekend.

#                               4. Give up TV for a weekend.

#                               5. Listen to a new song every day.

#                               6. Spend five minutes focusing on your breath every day.

#                               7. Be totally honest — so no lying for 30 days (harder than you think).

#                               8. Draw or paint a picture a day.

#                               9. Learn something new every day.

#                               10. Teach others something new every day.

#                               11. Think of your worst habit, you’ve been meaning to ditch and give it up for 30 days.

#                               12. Drink eight glasses of water a day.

#                               13. Ditch the news for a month and instead seek out an interesting article to read every day.

#                               14. Cook or bake something once a week.

#                               15. Spend five minutes a day repeating a positive affirmation you’ve set yourself.

#                               16. Keep a laughter journal. Write down one thing a day that made you really laugh hard.

#                               17. Go for a 15 minute run every day

#                               18. Do 50 sit-ups a day.

#                               19. Write down a positive thought a day

#                               20. Keep a gratitude list for 30 days

#                               21. Before you go to sleep, think about the best thing that happened to you that day for five minutes.

#                               22. What have you always wanted to do but never have? Spend 30 days writing down ideas for accomplishing your goal.

#                               23. Drink green tea (high in antioxidants) every morning.

#                               24. Give up bitching for a month or saying anything negative about people.

#                               25. Go money free or live on a strict budget for a month then splash out at the end.

#                               26. Face a new fear a day — talk to a stranger, pick up a spider… push yourself put of your comfort zone

#                               27. Take up a new interesting hobby — tai chi, free running, pottery…

#                               28. Tell someone you love them each day.

#                               29. Learn to draw the human face — record your progress in a sketchbook and be a mazed at the results.

#                               30. Learn a new instrument in a month — the ukulele, cello, flute — whatever takes your fancy.

#                               31. Bring your own lunch to work.

#                               32. Be the Yes man for a month and start saying yes to stuff.

#                               33. Create a postcard sized piece of art each day and have a work of art to display at the end of the month.

#                               34. Learn a new word every day.

#                               35. Spend 15 mins practising a new language.

#                               36. Ditch social media sites for 30 days, or limit yourself to a few minutes a day.

#                               37. Spend a week being a vegetarian or vegan

#                               38. Eat something you’ve never tried before every day.

#                               39. Do an act of kindness a day.

#                               40. Visit a new website a day.

#                               41. Go internet free for a day.

#                               42. Be positive for 30 days — even when things go wrong, look only for the positives.

#                               43. Do a brain training puzzle a day like sudoku, crosswords or anything on lumosity.

#                               44. Feel beautiful in your own skin every day.

#                               45. Create a bucket list of 30 things you want to do in the next 15 years.

#                               46. Don’t buy anything new for a month.

#                               47. Sell 30 things you don’t need, use or wear anymore and see how much money you make at the end of the month.",
#                      rules: "You have one year to decide when to start this challenge. We reccomend asap. In only 47 days complete them all and feel the difference in your life.",
#                   at_stake: "A happier life",
#                    picture: Faker::Avatar.image,
#                      owner: u,
#                 start_date: "2017/01/01",
#                   end_date: "2018/01/01",
#                   yourself: true)
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
