class ProjectsController < ApplicationController
  before_filter :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.scoped
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project, notice: 'Project created.'
    else
      render action: :new
    end
  end

  def edit
  end

  def update
    if @project.update_attributes(project_params)
      redirect_to @project, notice: 'Project updated.'
    else
      render action: :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_url, notice: 'Project destroyed.'
  end

private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
