class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      flash[:success] = "Todo list created!"
      redirect_to @todo
    else
      render 'new'
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update_attributes(todo_params)
      # Handle a successful update.
    else
      render 'edit'
    end
    redirect_to @todo
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    flash[:success] = "Todo list deleted"
    redirect_to todos_url
  end

  def show
    @todo = Todo.find(params[:id])
    @todosubs = @todo.todosubs
  end

  def index
    @todos=Todo.all
    @todosubs=Todosub.all
  end

  private
  def todo_params
    params.require(:todo).permit(:title, :content, :category, :kind, :importance, :startdate, :enddate, :timeframe, :timeframe_unit)
  end

end


  def destroy
    Patient.find(params[:id]).destroy
    flash[:success] = "Patient deleted"
    redirect_to patients_url
  end


