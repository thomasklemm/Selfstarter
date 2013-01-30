class TeamsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_teams
  before_filter :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  def index
  end

  # GET /teams/123
  def show
  end

  # GET /teams/new
  def new
    @team = @teams.build(team_params)
  end

  # POST /teams
  def create
    @team = @teams.build(team_params)
    if @team.save
      redirect_to @team, notice: 'Team created.'
    else
      render action: :new
    end
  end

  # GET /teams/123/edit
  def edit
  end

  # PUT /teams/123
  def update
    if @team.update_attributes!(team_params)
      redirect_to @team, notice: 'Team updated.'
    else
      render action: :edit
    end
  end

  # DELETE /teams/123
  def destroy
    @team.destroy
    redirect_to teams_path, notice: 'Team destroyed.'
  end

  # OPTIMIZE: ALLOW TEAM CREATOR TO INVITE TEAM MEMBERS
  # # POST /team/send_invite
  # def send_invite
  # end
  # # GET /invitations
  # # POST /invitations/accept...
  # MAYBE TIME FOR A NEW CONTROLLER

private

  def team_params
    params.require(:team).permit(:name, :pitch, :location, :description)
  end

  def set_teams
    @teams = current_user.teams
  end

  def set_team
    @team = @teams.find(params[:id])
  end
end
