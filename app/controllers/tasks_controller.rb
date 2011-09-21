class TasksController < ApplicationController
  respond_to :json

  def index
    respond_with(@tasks = Task.all)
  end

  def create
    task = Task.create(params)
    respond_with task
  end

end
