class QuestionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :topic, :question, :full_answer
  has_many :questions_quizzes
  has_many :answers
end
