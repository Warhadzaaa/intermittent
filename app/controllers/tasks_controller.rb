class TasksController < ApplicationController
  before_action :set_task, only: %i[edit update accept decline archive]

  def create
    @task = Task.new(task_params)
    @company = Company.find(params[:company_id])
    @project = Project.find(params[:project_id])
    @candidate = Candidate.find(params[:candidate_id])
    @task.candidate = @candidate
    @task.project = @project
    @task.status = "Awaiting"
    @task.save!
    @chatroom = Chatroom.create(name: @project.name, task: @task)
    redirect_to company_project_path(@company, @project)

  end

  # def accept
  #   task = Task.find(params['task_id'])
  #   task.status = "Accepted"
  #   task.save
  #   redirect_to (candidate_path(task.candidate))
  # end

  # def update
  #   @task.update(task_params)
  #   if current_user.corporate
  #     redirect_to company_path(current_user)
  #   else
  #     redirect_to candidate_path(current_user)
  #   end
  # end

  def accept
    @task.status = "Accepted"
    @task.save

    respond_to do |format|
      format.html { redirect_to candidate_path(current_user) }
      format.json
    end
  end

  def decline
    @task.status = "Declined"
    @task.save

    respond_to do |format|
      format.html { redirect_to candidate_path(current_user) }
      format.json
    end
  end

  def archive
    @task.status = "Archived"
    @task.save

    respond_to do |format|
      format.html { redirect_to project_path(@task.project) }
      format.json
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:start_date, :end_date, :status)
  end
end
