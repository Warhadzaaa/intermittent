class CandidatesController < ApplicationController
  before_action :set_candidate, only: %i[show edit update]

  def index
    @candidates = Candidate.all
  end

  def show
    @task = Task.new
    @company = Company.find_by(user: current_user)
    @project = Project.find_by(company: @company)
  end

  def edit
  end

  def update
    @candidate.update(candidate_params)
    redirect_to candidate_path(current_user)
  end

  private

  def set_candidate
    @candidate = Candidate.find(params[:id])
  end

  def candidate_params
    params.require(:candidate).permit(:first_name, :last_name, :skills, :description, :experiences, :address, :role, :availability, :sector)
  end
end
