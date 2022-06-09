class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @task = Task.find(params[:task_id])
    @review.task = @task
    if @review.save
      redirect_to company_project_path(@review.task.project.company, @review.task.project)
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
