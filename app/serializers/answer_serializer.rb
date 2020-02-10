class AnswerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :text, :correct
  belongs_to :question
end
