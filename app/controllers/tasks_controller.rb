class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @new_task = Task.new
  end

  def create
    Task.create(task_info)
    redirect_to tasks_path
  end

  private

  def task_info
    params.require(:task).permit(:title, :details)
  end
end
