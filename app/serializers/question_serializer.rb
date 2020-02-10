class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :topic, :question, :full_answer, :answers
  # has_many :answers
end
