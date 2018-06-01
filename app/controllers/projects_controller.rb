class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @task = Task.new
  end
  
  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)

    @project.save
    redirect_to @project
  end

  def update
    @project = Project.find(params[:id])

    @project.update(project_params)
    redirect_to @project
  end

  def destroy
    @project = Project.find(params[:id])

    @project.delete
    redirect_to :root
    
  end

private
  def project_params
    params.require(:project).permit(
      {task_ids:[]},
      :name, 
      :deadline)
  end

end