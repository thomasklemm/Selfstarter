class Starter::TeamsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @teams = my_teams
  end

  def show
    @team = my_teams.find(params[:id])
  end

  def new
    @team = my_teams.build
  end

  def create
    if @team = my_teams.create(team_params)
      redirect_to starter_team_path(@team), notice: 'Team created.'
    else
      render action: :new
    end
  end

  def edit
    @team = my_teams.find(params[:id])
  end

  def update
    @team = my_teams.find(params[:id])
    if @team.update_attributes(team_params)
      redirect_to starter_team_path(@team), notice: 'Team updated.'
    else
      render action: :edit
    end
  end

  def destroy
    # OPTIMIZE: Provide a way to destroy a team.
  end

private

  def team_params
    params.require(:team).permit(:name, :location, :pitch, :description)
  end

  def my_teams
    current_user.teams
  end
end
