class ProjectsController < ApplicationController
  def index
    @todos = Project.all
  end
end
