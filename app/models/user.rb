class User < ApplicationRecord
    has_one_attached :image
    # attr_accessor :id, :bio, :email
end
