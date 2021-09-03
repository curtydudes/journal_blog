class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @categories = @user.categories
  end

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def edit 
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Your account information was succsfully updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user.id] = @user.id
      flash[:notice] = "Welcome to the Task Channel #{@user.username}, you have successfully signed up."
      redirect_to categories_path     
    else
      render 'new'
    end
  end

  private 
  def user_params
    params.require(:user).permit(:username,:email,:password)
  end


end
