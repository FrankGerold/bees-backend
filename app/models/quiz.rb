class Quiz < ApplicationRecord

  belongs_to :user

  has_many :questions_quizzes
  has_many :questions, through: :questions_quizzes

  has_many :answers, through: :questions

end
