class UsersController < ApplicationController
    def index 
        users = User.all 

        render json: users 
    end 

    def show 
        user = User.all.find(params[:id])
        image = rails_blob_path(user.image)
        render json: {user: user, image: image}
    end 
end
