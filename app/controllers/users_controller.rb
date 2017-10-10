class UsersController < ApplicationController
  def index
      @users = User.all
  end

  def show
      @user = User.find(params[:id])
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.valid?
      redirect_to @user
    else
      render :edit
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to @user
    else
      render :new
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    flash[:notice] = "#{user.name} deleted"
    redirect_to users_path
  end

  private def user_params
    params.require(:user).permit(:name, :email)
  end
end
