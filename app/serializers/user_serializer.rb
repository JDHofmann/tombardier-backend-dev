class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :contact_email, :password, :bio

  # def user_image 
  #   rails_blob_path(object.image, , only_path: true)
  # end 
  
  attribute :projects do |obj|
    ProjectSerializer.new(obj.projects)
  end
  

  
  
end
