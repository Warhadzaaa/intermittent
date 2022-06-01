class TasksController < ApplicationController
   before_action :set_task, only: %i[update]


  def create
  end

  # def accept
  #   task = Task.find(params['task_id'])
  #   task.status = "Accepted"
  #   task.save
  #   redirect_to (candidate_path(task.candidate))
  # end

  def update
    @task.update(task_params)
    if current_user.corporate
      redirect_to company_path(current_user)
    else
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
