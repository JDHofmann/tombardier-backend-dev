class ProjectsController < ApplicationController

    def index 
        projects = Project.all
        # render json: projects

        json_string = ProjectSerializer.new(projects).serializable_hash.to_json

        render json: json_string 
    end 

end
