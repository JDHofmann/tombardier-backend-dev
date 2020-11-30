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

    def update 
        user = User.all.find(params[:id])
        user.update(user_params)

            # purge if a link already exists and the params contain a new picture
            # image = rails_blob_path(user.image)
            # byebug
        # if params[:image] && event.url
        #     event.image.purge
        # end
    
        # if event.update(params)
        #     if params[:image]
        #     event.update(url: event.image.url)
        #     end
        #     # render json: event, status: :ok
        # end
        render json: user
    end 

    # private 

    def user_params 
        params.require(:user).permit(:site_title, :site_subtitle, :bio, :description, :contact_email, :image)
    end 
end
