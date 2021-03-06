class CandidatesController < ApplicationController
  before_action :set_candidate, only: %i[show edit update]

  def index
    if params[:sector].present? && params[:role].present? && params[:address].present?
      @candidates = Candidate.where("sector ILIKE ?", "%#{params[:sector]}%")
      @candidates = @candidates.where("role ILIKE ?", "%#{params[:role]}%")
      @candidates = @candidates.where("address ILIKE ?", "%#{params[:address]}%")
    elsif params[:sector].present? && params[:role].present? && !params[:address].present?
      @candidates = Candidate.where("sector ILIKE ?", "%#{params[:sector]}%")
      @candidates = @candidates.where("role ILIKE ?", "%#{params[:role]}%")
    elsif params[:sector].present? && !params[:role].present? && params[:address].present?
      @candidates = Candidate.where("sector ILIKE ?", "%#{params[:sector]}%")
      @candidates = @candidates.where("address ILIKE ?", "%#{params[:address]}%")
    elsif params[:sector].present? && !params[:role].present? && !params[:address].present?
      @candidates = Candidate.where("sector ILIKE ?", "%#{params[:sector]}%")
    elsif !params[:sector].present? && params[:role].present? && params[:address].present?
      @candidates = Candidate.where("role ILIKE ?", "%#{params[:role]}%")
      @candidates = @candidates.where("address ILIKE ?", "%#{params[:address]}%")
    elsif !params[:sector].present? && params[:role].present? && !params[:address].present?
      @candidates = Candidate.where("role ILIKE ?", "%#{params[:role]}%")
    elsif !params[:sector].present? && !params[:role].present? && params[:address].present?
      @candidates = Candidate.where("address ILIKE ?", "%#{params[:address]}%")
    else
      @candidates = Candidate.all
    end

    @company = Company.find(params[:company_id])
    @project = Project.find(params[:project_id])
  end

  def show
    if current_user.corporate
      @task = Task.new
      @company = Company.find(params[:company_id]) if params[:company_id]
      @project = Project.find(params[:project_id]) if params[:project_id]
    end
    @reviews = []

    @candidate.tasks.each do |task|
      if task.review
        @reviews << task.review
      end
    end
  end

  def edit
  end

  def update
    @candidate.update(candidate_params)
    redirect_to candidate_path(@candidate)
  end

  private

  def set_candidate
    @candidate = Candidate.find(params[:id])
  end

  def candidate_params
    params.require(:candidate).permit(:first_name, :last_name, :skills, :description, :address, :role, :availability, :sector, :avatar, :cv)
  end
end
