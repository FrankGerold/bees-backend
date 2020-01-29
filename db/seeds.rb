# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
User.destroy_all

# rake db:reset db:migrate

frank = User.create(name: 'Frank', userName: 'fg', password_digest: BCrypt::Password.create('123'), bio: 'Coder', photo: 'img.jpg')

quiz0 = Quiz.create(name: 'First Quiz', topic: 'tests', score: '8/10', user: frank)

question0 = Question.create(topic: 'tests', quiz: quiz0)

answers = [
  {text: 'lmao', correct: true, question: question0},
  {text: 'pls', correct: false, question: question0}
]

Answer.create(answers)
