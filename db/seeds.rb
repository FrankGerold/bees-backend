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

frank = User.create(name: 'Frank', userName: 'fg', password_digest: BCrypt::Password.create('fg'), bio: 'Weed Lord 420', photo: 'img.jpg')

question0 = Question.create(topic: 'bees', full_answer: 'Honey bees must gather nectar from two million flowers to make one pound of honey', question:'How many flowers must be harvested to make a pound of honey?')
answers0 = [
  {correct: false, text: '2 Thousand', question: question0},
  {correct: false, text: '20', question: question0},
  {correct: true, text: '2 Million', question: question0},
  {correct: false, text: '200', question: question0},
]
Answer.create(answers0)

question1 = Question.create(topic: 'bees', full_answer: 'One bee has to fly about 90,000 miles – three times around the globe – to make one pound of honey.', question:'How far would a single bee need to fly to harvest enough flowers for a pound of honey?')
answers1 = [
  {correct: false, text: '100 Miles', question: question1},
  {correct: false, text: '1,000 Miles', question: question1},
  {correct: true, text: '90,000 miles', question: question1},
  {correct: false, text: '2 Million', question: question1},
]
Answer.create(answers1)

question2 = Question.create(topic: 'bees', full_answer: 'The average bee will make only 1/12th of a teaspoon of honey in its lifetime.', question:'How much honey does an average bee make?')
answers2 = [
  {correct: false, text: '1 Cup', question: question2},
  {correct: false, text: '2 Liters', question: question2},
  {correct: false, text: '1 gallon', question: question2},
  {correct: true, text: '1/12th of a teaspoon (0.5mL)', question: question2},
]
Answer.create(answers2)

question3 = Question.create(topic: 'bees', full_answer: 'A honey bee visits 50 to 100 flowers during a collection trip.', question:'How many flowers does a bee visit each trip?')
answers3 = [
  {correct: true, text: '50-100 flowers', question: question3},
  {correct: false, text: '1,000-2,000 flowers', question: question3},
  {correct: false, text: '10-20 flowers', question: question3},
  {correct: false, text: '10-20 thousand flowers', question: question3},
]
Answer.create(answers3)

question4 = Question.create(topic: 'bees', full_answer: 'A honey bee can fly for up to six miles, and as fast as 15 miles per hour', question:'How fast can a bee fly?')
answers4 = [
  {correct: false, text: '1mph', question: question4},
  {correct: true, text: '15mph', question: question4},
  {correct: false, text: '5mph', question: question4},
  {correct: false, text: '100mph', question: question4},
]
Answer.create(answers4)

question5 = Question.create(topic: 'bees', full_answer: 'A honey bee can fly for up to six miles, and as fast as 15 miles per hour', question:'How fast can a bee fly?')
answers5 = [
  {correct: false, text: '1mph', question: question5},
  {correct: true, text: '15mph', question: question5},
  {correct: false, text: '5mph', question: question5},
  {correct: false, text: '100mph', question: question5},
]
Answer.create(answers5)

question6 = Question.create(topic: 'bees', full_answer: 'The bee’s brain is oval in shape and about the size of a sesame seed, yet it has a remarkable capacity to learn and remember things. For example, it is able to make complex calculations on distance travelled and foraging efficiency.', question:'How large is a bee\'s brain?')
answers6 = [
  {correct: false, text: 'The size of a dog\'s', question: question6},
  {correct: false, text: 'The size of a pea', question: question6},
  {correct: true, text: 'The size of a sesame seed', question: question6},
  {correct: false, text: 'The size of a bacterium', question: question6},
]
Answer.create(answers6)

question7 = Question.create(topic: 'bees', full_answer: 'Honey bees communicate with one another by dancing.', question:'How do bees communicate?')
answers7 = [
  {correct: false, text: 'With chirps', question: question7},
  {correct: false, text: 'By buzzing', question: question7},
  {correct: false, text: 'With songs', question: question7},
  {correct: true, text: 'By dancing', question: question7},
]
Answer.create(answers7)

question8 = Question.create(topic: 'bees', full_answer: 'A colony of bees consists of 20,000-60,000 honey bees and one queen. Worker honey bees are female, live for about 6 weeks and do all the work.', question:'How many bees live in the average hive?')
answers8 = [
  {correct: true, text: '20,000-60,000', question: question8},
  {correct: false, text: '100,000', question: question8},
  {correct: false, text: '5,000', question: question8},
  {correct: false, text: '500', question: question8},
]
Answer.create(answers8)

question9 = Question.create(topic: 'bees', full_answer: 'The queen bee can live up to 5 years and is the only bee that lays eggs. She is the busiest in the summer months, when the hive needs to be at its maximum strength, and lays up to 2500 eggs per day.', question:'How long does a queen bee live?')
answers9 = [
  {correct: false, text: '10 years', question: question9},
  {correct: true, text: '5 years', question: question9},
  {correct: false, text: '6 months', question: question9},
  {correct: false, text: '1 year', question: question9},
]
Answer.create(answers9)

question10 = Question.create(topic: 'bees', full_answer: 'Larger than the worker bees, the male honey bees (also called drones), have no stinger and do no work. All they do is mate.', question:'Male bees are called _____ and their main job is _____.')
answers10 = [
  {correct: false, text: 'Workers, construction', question: question10},
  {correct: false, text: 'Soldiers, hunting', question: question10},
  {correct: true, text: 'Drones, mating', question: question10},
  {correct: false, text: 'Scouts, finding flowers', question: question10},
]
Answer.create(answers10)

question11 = Question.create(topic: 'bees', full_answer: 'Honey has always been highly regarded as a medicine. It is thought to help with everything from sore throats and digestive disorders to skin problems and hay fever.', question:'Many different cultures have viewed honey as a potent _____.')
answers11 = [
  {correct: false, text: 'Detergent', question: question11},
  {correct: false, text: 'Binding agent', question: question11},
  {correct: true, text: 'Medicine', question: question11},
  {correct: false, text: 'Poison', question: question11},
]
Answer.create(answers11)

question12 = Question.create(topic: 'bees', full_answer: 'Honey has antiseptic properties and was historically used as a dressing for wounds and a first aid treatment for burns and cuts.', question:'Honey has ______ properties.')
answers12 = [
  {correct: false, text: 'Odoriferous', question: question12},
  {correct: true, text: 'Antiseptic', question: question12},
  {correct: false, text: 'Soporific', question: question12},
  {correct: false, text: 'Erotic', question: question12},
]
Answer.create(answers12)

question13 = Question.create(topic: 'bees', full_answer: 'Honey is incredibly healthy and includes enzymes, vitamins, minerals. It’s the only food that contains “pinocembrin”, an antioxidant associated with improved brain functioning.', question:'Enzymes in honey make it helpful for ______.')
answers13 = [
  {correct: false, text: 'woodworking', question: question13},
  {correct: false, text: 'electronics', question: question13},
  {correct: false, text: 'coloring', question: question13},
  {correct: true, text: 'digestion', question: question13},
]
Answer.create(answers13)

question14 = Question.create(topic: 'bees', full_answer: 'Honey’s ability to attract and retain moisture means that it has long been used as a beauty treatment. It was part of Cleopatra’s daily beauty ritual.', question:'Since it is so good at retaining moisture, honey is commonly used for _____')
answers14 = [
  {correct: false, text: 'Smoking', question: question14},
  {correct: false, text: 'Dehumidifying', question: question14},
  {correct: true, text: 'Skincare & Moisturizing', question: question14},
  {correct: false, text: 'Freeze-drying', question: question14},
]
Answer.create(answers14)

question15 = Question.create(topic: 'bees', full_answer: 'When a bee finds a good source of nectar it flies back to the hive and shows its friends where the nectar source is by doing a dance which positions the flower in relation to the sun and hive. This is known as the ‘waggle dance.’', question:'Bees tell each other where to find nectar using the _____')
answers15 = [
  {correct: false, text: 'hive mind', question: question15},
  {correct: false, text: 'antenna point', question: question15},
  {correct: false, text: 'food buzz', question: question15},
  {correct: true, text: 'waggle dance', question: question15},
]
Answer.create(answers15)

question16 = Question.create(topic: 'bees', full_answer: 'Bees are considered Eusocial, which is the highest level of societal organization in a species. They cooperatively care for each other\'s young, divide labor into specialized behavioral groups, and overlap generations within a colony.', question:'Since bees cooperate so well and hives are so organized, they are called a ______ species.')
answers16 = [
  {correct: false, text: 'Friendly', question: question16},
  {correct: false, text: 'Parasocial', question: question16},
  {correct: true, text: 'Eusocial', question: question16},
  {correct: false, text: 'Antisocial', question: question16},
]
Answer.create(answers16)

question17 = Question.create(topic: 'bees', full_answer: 'Only the Queen in the hive lays eggs. She communicates with her hive with her own special scent called pheromones. The queen will lay around 1,500 eggs per day.', question:'How many bees in a hive can lay eggs?')
answers17 = [
  {correct: false, text: 'All workers', question: question17},
  {correct: true, text: 'One', question: question17},
  {correct: false, text: '10,000', question: question17},
  {correct: false, text: '1000', question: question17},
]
Answer.create(answers17)

question18 = Question.create(topic: 'bees', full_answer: 'Bees have two stomachs - one stomach for eating and the other special stomach is for storing nectar collected from flowers or water so that they can carry it back to their hive.', question:'How many stomachs do bees have?')
answers18 = [
  {correct: false, text: '4', question: question18},
  {correct: false, text: '3', question: question18},
  {correct: true, text: '2', question: question18},
  {correct: false, text: '1', question: question18},
]
Answer.create(answers18)

question19 = Question.create(topic: 'bees', full_answer: 'Bees have five eyes - two compound eyes and three tiny ocelli eyes.', question:'How many eyes do bees have?')
answers19 = [
  {correct: false, text: '8', question: question19},
  {correct: false, text: '2', question: question19},
  {correct: false, text: '1', question: question19},
  {correct: true, text: '5', question: question19},
]
Answer.create(answers19)

quiz0 = Quiz.create(name: 'First Quiz', topic: 'bees', user: frank)
for q in (1..10) do
  QuestionsQuiz.create(quiz: quiz0, question: Question.order('RANDOM()').first)
end
