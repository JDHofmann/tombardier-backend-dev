class UserSerializer
  include JSONAPI::Serializer
  # attributes :cat 

  has_many :projects
end
