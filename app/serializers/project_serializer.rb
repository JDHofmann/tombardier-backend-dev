class ProjectSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :subtitle, :description, :project_links

  # attribute :project_links do |obj|
  #   ProjectSerializer.new(obj.project_links)
  # end
end
