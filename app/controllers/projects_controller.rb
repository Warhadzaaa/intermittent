class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update]

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.company = current_user
    @project.save
    redirect_to project_path(@project)
  end

  def edit
  end

  # def archived
  #   @project = Project.find(params[:id])
  #   @project.update(archived: !@project.archived)
  #   redirect_to company_path(@project.company)
  # end

  def update
    @project.update(project_params)
    redirect_to project_path(@project)
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :start_date, :end_date, :description, :archived)
  end
end
