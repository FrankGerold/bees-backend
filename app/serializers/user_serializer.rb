class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :userName, :bio, :photo
  has_many :quizzes
end
