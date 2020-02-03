class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :topic
  belongs_to :quiz
  has_many :answers
end
