class ProjectsController < ApplicationController
  def index
    @todos = Project.all
  end
  def new
    @project = Project.new
  end
  def create
    @project = Project.create(project_parms)
    if @project.save
      redirect_to projects_url
    else
      render :new, status: :unprocessable_entity
    end
  end
  def show
    @project = Project.find(params[:id])
  end
  def edit
    @project = Project.find(params[:id])
  end
  private
  def project_parms
    params.require(:project).permit(:name, :description, :till, :priority)
  end
end
