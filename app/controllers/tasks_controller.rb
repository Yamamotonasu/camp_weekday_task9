class TasksController < ApplicationController
  before_action :set_task, only: [ :show ]

  def index
  end

  def show
  end

  def edit
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task, notice: "タスクを登録しました。"
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  def hide
  end

  private

  def task_params
    params.require(:task).permit(:title, :memo, :status)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
