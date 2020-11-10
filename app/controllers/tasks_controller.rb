class TasksController < ApplicationController

  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to task_path(task) # there is no view so I need to forward to showpage of that task (task_path = route to show; task = instance)
  end

  def edit

  end

  def update
    @task.update(task_params)

    redirect_to task_path(@task) # Redirect to the show page
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  # STRONG PARAMS:
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
