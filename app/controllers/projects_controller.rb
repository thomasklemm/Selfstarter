class ProjectsController < ApplicationController
  # GET /projects
  def index
    @projects = Project.scoped
  end

  # GET /projects/123
  def show
    @project = Project.find(params[:id])
  end
end
