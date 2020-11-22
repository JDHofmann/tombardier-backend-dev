class Project < ApplicationRecord
  belongs_to :user
  has_many :project_links
  has_many :project_images

  def attributes
    {
      'id' => nil,
      'updated_at' => nil,
      'created_at' => nil,
      'attachment_url' => nil
    }
  end
end
