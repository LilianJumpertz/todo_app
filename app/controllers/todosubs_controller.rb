class TodosubsController < ApplicationController
  def new
    @todosub = Todosub.new
    @todo_id = params[:todo_id]
  end

  def create
    @todosub = Todosub.new(todosub_params)
    if @todosub.save
      flash[:success] = "Todo item created!"
      redirect_to todos_url
    else
      @todo_id = @todosub.todo_id
      params[:todo_id] = @todo_id 
      render 'new'
    end
  end

  def edit
    @todosub = Todosub.find(params[:id])
  end

  def update
    @todosub = Todosub.find(params[:id])
    if @todosub.update_attributes(patient_params)
      # Handle a successful update.
      redirect_to todos_url
    else
      render 'edit'
    end
  end

  def destroy
    Todosub.find(params[:id]).destroy
    flash[:success] = "Todo item deleted"
    redirect_to todosubs_url
  end

  private
  def todosub_params
    params.require(:todosub).permit(:title, :content, :category, :kind, :importance, :startdate, :enddate, :timeframe, :timeframe_unit, :todo_id)
  end
end