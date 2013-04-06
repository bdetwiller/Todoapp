class UsersController < ApplicationController
	def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create 
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_url(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes!(params[:user])

    redirect_to user_url(@user)
  end

  def destroy
    User.find(params[:id]).destroy

    rediect_to users_url
  end
end

