class TeamsController < ApplicationController
  before_filter :set_project, only: :show

  def show
    @team = @project.team
  end

private

  def set_project
    @project = Project.find(params[:project_id])
  end
end
