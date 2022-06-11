class ReviewController < ApplicationController
  before_action :set_review, only: %i[create show index destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.rating = # import from HTML
    @review.comment = # import from HTML
    @review.booking_id = # import from HTML
    @review.user_id = @current_user.id

    if @review.save
      redirect_to # some appropriate path
    else
      render 'new'
    end
  end

  def destroy
  end

  def index; end

  def show; end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :booking_id)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
