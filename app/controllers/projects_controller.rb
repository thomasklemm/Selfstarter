class ProjectsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_filter :set_current_team, only: [:new, :create, :edit, :update, :destroy]

  def index
    @projects = Project.scoped
  end

  def show
    @project = Project.find(params[:id])
  end

  def team
    @project = Project.find(params[:id])
    @team = @project.team
  end

  def new
    @project = current_team.project || current_team.build_project
  end

  def create
    @project = current_team.build_project(project_params)
    if @project.save
      redirect_to @project, notice: 'Project created.'
    else
      render action: :new
    end
  end

  def edit
    @project = current_team.project
  end

  def update
    @project = current_team.project
    if @project.update_attributes(project_params)
      redirect_to @project, notice: 'Project updated.'
    else
      render action: :edit
    end
  end

  def destroy
    @project = current_team.project
    if @project.destroy
      redirect_to projects_url, notice: 'Project destroyed.'
    else
      render action: :edit
    end
  end

private

  def project_params
    params.require(:project).permit(:title, :description)
  end

  def set_current_team
    unless current_team
      redirect_to new_team_path, notice: 'Please create or join a team first!'
    end
  end
end
