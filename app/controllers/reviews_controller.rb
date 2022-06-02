class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @task = Task.find(params[:task_id])
    @review.task = @task
    @review.save
    redirect_to project_path(@review.task.project.company, @review.task.project)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
