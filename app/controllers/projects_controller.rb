class ProjectsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_filter :set_team

  def index
    @projects = @team.projects
  end

  def show
    @project = @team.projects.find(params[:id])
  end

  def new
    @project = @team.projects.build(project_params)
  end

  def create
    @project = @team.projects.build(project_params)
    if @project.save
      redirect_to @project, notice: 'Project created.'
    else
      render action: :new
    end
  end

  def edit
    @project = @team.projects.find(params[:id])
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

  def set_team
    @team = Team.find(params[:team_id])
  end

  def set_current_team
  end
end
