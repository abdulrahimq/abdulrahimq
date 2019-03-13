class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(user_params)
    @task.save
    redirect_to "/tasks"
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(user_params)
    redirect_to "/tasks"
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy
  end

  private

  def user_params
    params.require(:task).permit(:title)
    params.require(:task).permit(:details)
  end
end
































