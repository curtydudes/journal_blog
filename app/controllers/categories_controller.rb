class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    if @category.save 
      flash[:notice] = "Category was successfuly created"
      redirect_to @category
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = "Category was updated successfully"
      redirect_to @category
    else
      render 'edit'
    end
   end



  private

  def category_params
    params.require(:category).permit(:category_name, :remarks)
  end

end
