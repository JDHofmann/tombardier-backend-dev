class UsersController < ApplicationController
    def index 
        users = User.all 

        render json: users 
    end 

    def show 
        user = User.all.find(params[:id])
        # image = rails_blob_path(user.image)
        # render json: {user: user, image: image}

        json_string = UserSerializer.new(user).serializable_hash.to_json

        render json: json_string
    end 
end
