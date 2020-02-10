class QuizSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :topic, :score, :created_at
  belongs_to :user
  has_many :questions
end
