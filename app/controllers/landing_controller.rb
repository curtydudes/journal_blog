class LandingController < ApplicationController

  def home
    redirect_to categories_path if logged_in?
  end

  def about
  end
  
end