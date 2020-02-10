class QuizSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :topic, :score
  belongs_to :user
  has_many :questions
  # has_many :answers
  # include '**'
end
