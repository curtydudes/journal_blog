class AgendasController < ApplicationController

  before_action :get_category

  def index
    @category_id = params[:category_id]
    @agendas = Category.find(params[:category_id]).agendas
  end

  def new
    @agenda = @category.agendas.build
  end

  def show
    @agenda = Agenda.find(params[:category_id])
  end

  def create
    @agenda = @category.agendas.build(agenda_params)
    #@agenda = Agenda.new(agenda_params)
    if @agenda.save 
      flash[:notice] = "Category was successfuly created"
      redirect_to category_agendas_path
    else
      render 'new'
    end
  end

  def edit
    @agenda = @category.agendas.find(params[:id])
  end

  def update
    @agenda = Agenda.find(params[:id])
    if @agenda.update(agenda_params)
      flash[:notice] = "Task was updated successfully"
      redirect_to category_agendas_path(@agenda.category_id)
    else
      render 'edit'
    end
   end

  def destroy
    @agenda = Agenda.find(params[:id])
    @agenda.destroy
    redirect_to category_agendas_path(@agenda.category_id)
  end


  private

  def get_category
    @category = Category.find(params[:category_id])
  end

  def agenda_params
    params.require(:agenda).permit(:task_name, :task_description, :deadline, :status,:category_id)
  end

end
