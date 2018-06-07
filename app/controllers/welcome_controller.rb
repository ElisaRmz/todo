class WelcomeController < ApplicationController
  helper WelcomeHelper
  
  def index
    @projects = Project.all
    @project = Project.new
    @task = Task.new

    if params.has_key? :filter
      @tasks = Task.where(finish: true) if params[:filter] == 'done' 
      @tasks = Task.all if params[:filter] == 'all'
    else
      @tasks = Task.where(finish: false)
    end

    #filter: elegido al azar
    #render json: @tasks (crea un api)
  end
end
