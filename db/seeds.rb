# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#


User.create email: 'robot@gmail.com', password: '123456'

10.times {
  Article.create title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph
}

10.times {
  Comment.create user_id: 1, comment_message: Faker::Lorem.paragraph, article_id: 1
  Comment.create user_id: 1, comment_message: Faker::Lorem.paragraph, article_id: 2
}

