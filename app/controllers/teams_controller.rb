class TeamsController < ApplicationController

	def index
  	@teams = Team.all
  end

  def show
  	@team = Team.find(params[:id])
  end

  def new
  	@team = Team.new
  end

  def create 
    fail
    #how does this automatically trigger the creation of users
    @team = Team.new(params[:team])
    if @team.save
      redirect_to team_url(@team)
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update_attributes!(params[:team])

    redirect_to team_url(@team)
  end

  def destroy
    Team.find(params[:id]).destroy

    rediect_to teams_url
  end
end
