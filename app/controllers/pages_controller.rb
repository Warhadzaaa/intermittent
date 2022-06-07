class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @company = Company.find_by(user_id:current_user)
    @candidate = Candidate.find_by(user_id:current_user)
  end
end
