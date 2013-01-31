class TeamsController < ApplicationController
  # GET /teams
  def index
    @teams = Team.scoped
  end

  # GET /teams/123
  def show
    @team = Team.find(params[:id])
  end
end
