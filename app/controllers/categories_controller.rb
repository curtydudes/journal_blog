class CategoriesController < ApplicationController
  before_action :get_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
    @agendas = Agenda.all
  end

  def create
    @category = Category.new(category_params)
    @category.user = current_user
    if @category.save 
      flash[:notice] = "Category was successfuly created"
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      flash[:notice] = "Category was updated successfully"
      redirect_to category_path
    else
      render 'edit'
    end
   end

  def destroy
    @category.destroy
    redirect_to category_path
  end


  private

  def get_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:category_name, :remarks)
  end

end
