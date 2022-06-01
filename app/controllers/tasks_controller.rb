class Tasksontroller < ApplicationController
   before_action :set_task, only: %i[edit update]


  def create

  end



  def edit
  end

  def update
    @task.update(task_params)
    if current_user.type == company
      redirect_to company_path(current_user)
    elsif current_user.type == candidate
      redirect_to candidate_path(current_user)
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:status, :start_date, :end_date)
  end

end
