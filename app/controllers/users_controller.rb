class UsersController < ApplicationController
    def index 
        users = User.all 

        render json: users 
    end 

    def show 
        user = User.all.find(params[:id])
        render json: user
        # image = rails_blob_path(user.image)
        # render json: {user: user, image: image}

        # projects = user.projects
        # # projects = user.projects.map do |p|
        # #     p
        # # end
        # render json: {user: user, image: image, projects: projects}

        # json_string = UserSerializer.new(user).serializable_hash.to_json

        # render json: json_string
    end 
end
