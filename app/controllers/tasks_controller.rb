class TasksController < ApplicationController
  def index
    @task = Task.all
  end

  def create
    @task = Task.new
    @task.save
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params[:task])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end
end
