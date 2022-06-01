class CompaniesController < ApplicationController
  before_action :set_company, only: %i[show edit update]

  def show
  end

  def edit
  end

  def update
    @company.update(company_params)
    redirect_to company_path(current_user)
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :address, :description, :siret, :avatar)
  end
end
