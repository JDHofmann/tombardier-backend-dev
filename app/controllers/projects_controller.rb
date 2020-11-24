class ProjectsController < ApplicationController

    def index 
        projects = Project.all
        render json: projects

    end 

    def create 
        project = Project.create(p_params)
        render json: project
    end 

    def update 
        project = Project.all.find(params[:id])
        project.update(p_params)
        render json: project
    end 

    def destroy 
        project = Project.all.find(params[:id])
        project.destroy
        render json: project
    end 

    private 

    def p_params
        params.require(:project).permit!
    end

end
