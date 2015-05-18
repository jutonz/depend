class TasksController < ApplicationController
  def index
    @top_level_tasks = Task.all
  end

  def new 
    @task = Task.new
  end

  def create
    @task = Task.new task_params
    if @task.save
      redirect_to root_url, notice: 'Task created'
    end
  end

  private

  def task_params
    params.require(:task).permit(:title)
  end
  
end
