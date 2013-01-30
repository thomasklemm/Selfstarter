class TeamsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  #  GET /team
  def show
    @team = current_user.team
  end

  # GET /team/new
  def new
    @team = current_user.build_team
  end

  # POST /team
  def create
    @team = current_user.create_team(team_params)
    if @team.save
      redirect_to team_path, notice: 'Team created.'
    else
      render action: :new
    end
  end

  # GET /team/edit
  def edit
    @team = current_user.team
    if @team.blank?
      return redirect_to new_team_path, notice: 'Please create or join a team first.'
    end
  end

  # PUT /team
  def update
    @team = current_user.team
    if @team.update_attributes!(team_params)
      redirect_to team_path, notice: 'Team updated.'
    else
      render action: :edit
    end
  end

  # DELETE /team
  def destroy
    # OPTIMIZE: NOTHING HERE YET
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
end
