class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :userName, :bio, :photo
end
