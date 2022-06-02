class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update]

  def show
    @company = Company.find(params[:company_id])
  end

  def new
    @project = Project.new
    @company = Company.find(params[:company_id])
  end

  def create
    @project = Project.new(project_params)
    @project.company = Company.find(params[:company_id])
    @project.save
    redirect_to company_projects_path(@project)
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
    redirect_to company_project_path(@project)
  end

  # def archive
  #   raise
  # end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :start_date, :end_date, :description, :archived)
  end
end
