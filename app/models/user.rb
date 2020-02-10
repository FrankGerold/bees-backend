class User < ApplicationRecord

  has_secure_password
  validates :userName, uniqueness: {case_sensitive: false}

  has_many :quizzes
  has_many :questions, through: :quizzes
  has_many :answers, through: :questions

end
