class Question < ApplicationRecord

  has_many :questions_quizzes
  has_many :quizzes, through: :questions_quizzes

  has_many :answers

end
