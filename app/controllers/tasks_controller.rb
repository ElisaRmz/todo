class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end 

  def show
    @task = Task.find(params[:id])
  end  

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    
    @task.save
    redirect_back fallback_location: :root
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    
    @task.save
    redirect_back fallback_location: :root
  end

  def destroy
    @task = Task.find(params[:id]) 
    @task.delete
    redirect_to :root 
  end



private
  def task_params
    params.require(:task).permit(
      :project_id,
      :name, 
      :expiration, 
      :note, 
      :finish,
      :requirement)
  end

end
