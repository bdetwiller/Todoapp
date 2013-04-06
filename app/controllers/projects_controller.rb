class ProjectsController < ApplicationController
	def index
  	@projects = Project.all
  end

  def show
  	@project = Project.find(params[:id])
  end

  def new
  	@project = Project.new
    @project.team_id = params[:team_id]
  end
#Q: why does redirect_to(@Project) work
  def create 
    @project = Project.new(params[:project])
    if @project.save
      redirect_to project_url(@project)
    else
      #Q: why is :new a symbol?
      render :new
    end
  end

  def edit
    #Q: is params[id] coming from the URL, is it always coming from the URL
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes!(params[:project])

    redirect_to project_url(@project)
  end

  def destroy
    Project.find(params[:id]).destroy

    redirect_to projects_url
  end
end
