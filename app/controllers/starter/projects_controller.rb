class Starter::ProjectsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :my_team

  def index
    @projects = my_team_projects
  end

  def show
    @project = my_team_projects.find(params[:id])
  end

  def new
    @project = my_team_projects.build
  end

  def create
    if @project = my_team_projects.create(project_params)
      redirect_to starter_team_project_path(@team, @project), notice: 'Project created.'
    else
      render action: :new
    end
  end

  def edit
    @project = my_team_projects.find(params[:id])
  end

  def update
    @project = my_team_projects.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to starter_team_project_path(@team, @project), notice: 'Project updated.'
    else
      render action: :edit
    end
  end

  def destroy
    # OPTIMIZE: Give ability to destroy projects.
  end

private

  def project_params
    params.require(:project).permit(:title, :subtitle, :description, :starts_at, :ends_at)
  end

  def my_team
    @team ||= current_user.teams.find(params[:team_id])
  end

  def my_team_projects
    my_team.projects
  end
end
