class LandingController < ApplicationController

  def home
    #redirect_to categories_path if logged_in?
  end

  def about
  end

  def index
    @categories = Category.all
  end

  
end